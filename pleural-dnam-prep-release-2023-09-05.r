#mkdir betas control_matrix derived detection_p_values norm_objects qc_objects samplesheet

## ----globals -------------------------------------------------------------
# conda activate alspac
# R CMD BATCH --vanilla 'pleural-dnam-prep-release-2023-09-05.r' &
################################################################################
# File: pleural-dnam-prep-release-2023-09-05.r
# Purpose: 
#   
# Created: 
# Run on: epi-franklin
################################################################################
packages <- c("tidyverse", "meffil", "readxl") 
lapply(packages, require, character.only=T)


options(mc.cores=16)
packageVersion("meffil")

## ----dirs -------------------------------------------------------------
dir <- list()
dir$project = '/projects/MRC-IEU/research/projects/ieu3/p4/004/working'
dir$data <- file.path(dir$project, 'data/pleural-dnam/raw')
dir$scripts <- file.path(dir$project, 'scripts/pleural-dnam')
dir$out <- file.path(dir$project, 'data/pleural-dnam/releases/2023-09-05')
dir$reports <- file.path(dir$scripts, 'reports')

lapply(dir, function(i) {
	if (!dir.exists(i))
		dir.create(i, recursive = T)
	dir.exists(i)
	}
)

## ----files -------------------------------------------------------------
file <- list()
file$samplesheet <- file.path(dir$out, 
						"samplesheet/pleural-dnam.samplesheet.csv")

file$qc <- file.path(dir$out, "qc_objects/pleural-dnam.qc.objects.rds")

file$qc.report <- file.path(dir$out, 
					"derived/reports/qc/pleural-dnam.qc-report.html")

file$snp <- file.path(dir$out, "qc_snps/snp-names.txt")

file$detect.p <- file.path(dir$out, 
					"detection_p_values/pleural-dnam.detection_p_values.rds")

file$pc.fit.plot <- file.path(dir$out, 
					"derived/reports/qc/pleural-dnam.pc.fit.pdf")

file$norm <- file.path(dir$out, "norm_objects/pleural-dnam.norm.objects.rds")

file$betas <- file.path(dir$out, "betas/pleural-dnam.betas.rds")

file$norm.report <- 
		file.path(dir$out, 
			"derived/reports/normalization/pleural-dnam.normalization-report.html")

#file$cellcount <- 

# make all file directiories
file %>%
	map(~ dirname(.x)) %>%
	unique() %>%
	map(~ {
		if (!dir.exists(.x))
			dir.create(.x, recursive = T)
		dir.exists(.x)		
	})

## ----parameters -------------------------------------------------------------
param <- list()
param$verbose <- TRUE  
param$report.author <- "Paul Yousefi"
param$report.study <- "pleural-dnam"
param$pc <- 10

## ----samplesheet -------------------------------------------------------------
meffil.samplesheet <- meffil.create.samplesheet(dir$data, recursive=TRUE)
bbl.samplesheet <- read_xlsx(file.path(dir$data, "Sentrix_link.xlsx"))

samplesheet <- meffil.samplesheet %>% 
				inner_join(bbl.samplesheet, by = c("Sample_Name" = "sentrix")) 

samplesheet %>%
	write_csv(file = file$samplesheet)

## ----qc -------------------------------------------------------------
meffil.list.cell.type.references()

##	 [1] "andrews and bakulski cord blood" "blood gse167998"
##	 [3] "blood gse35069"                  "blood gse35069 chen"
##	 [5] "blood gse35069 complete"         "blood idoloptimized"
##	 [7] "blood idoloptimized epic"        "combined cord blood"
##	 [9] "cord blood gse68456"             "gervin and lyle cord blood"
##	[11] "guintivano dlpfc"                "saliva gse48472"

## possible options:

##	 [3] "blood gse35069" # Reinius        "blood gse35069 chen"
##	 [5] "blood gse35069 complete"         "blood idoloptimized"
##	 [7] "blood idoloptimized epic"     

qc.objects <- meffil.qc(samplesheet, 
				cell.type.reference = NA, 
				verbose = param$verbose)

qc.objects %>%
	write_rds(file = file$qc)

## ----qc.summary -------------------------------------------------------------
qc.summary <- meffil.qc.summary(qc.objects, verbose = param$verbose)

## ----qc.report -------------------------------------------------------------
sapply(
	list(file$qc.report, 
		file.path(dir$reports, "qc", basename(file$qc.report))),
			function(i){
				meffil.qc.report(
			    qc.summary,
			    output.file = i,
			    author = param$report.author,
			    study = param$report.study)
			}
	)

## ----qc.snps -------------------------------------------------------------
featureset <- qc.objects[[1]]$featureset
writeLines(meffil.snp.names(featureset), con = file$snp)

## # from https://github.com/perishky/meffil/wiki/Sample-QC
## system("plink --bfile dataset --extract snp-names.txt --recode A --out genotypes")
## 
## genotypes <- meffil.extract.genotypes("genotypes.raw")
## genotypes <- genotypes[,match(samplesheet$Sample_Name, colnames(genotypes))]

## ----id.bad.samples -------------------------------------------------------------
outlier <- qc.summary$bad.samples
table(outlier$issue)
index <- outlier$issue %in% c("Control probe (dye.bias)", 
                              "Methylated vs Unmethylated",
                              "X-Y ratio outlier",
                              "Low bead numbers",
                              "Detection p-value",
                              "Sex mismatch",
                              "Genotype mismatch",
                              "Control probe (bisulfite1)",
                              "Control probe (bisulfite2)")

outlier <- outlier[index,]
outlier
length(unique(outlier$sample.name))

## ----rm.bad.samples -------------------------------------------------------------
length(qc.objects)
qc.objects <- meffil.remove.samples(qc.objects, outlier$sample.name)
length(qc.objects)

file$qc <- str_replace(file$qc,".rds$", ".clean.rds")
qc.objects %>%
	write_rds(file = file$qc)

## ----qc.summary.clean -------------------------------------------------------------
qc.summary <- meffil.qc.summary(qc.objects, verbose = param$verbose)

## ----qc.report.clean -------------------------------------------------------------
file$qc.report <- str_replace(file$qc.report,".html$", ".clean.html")
sapply(
	list(file$qc.report, 
		file.path(dir$reports, "qc", basename(file$qc.report))),
			function(i){
				meffil.qc.report(
			    qc.summary,
			    output.file = i,
			    author = param$report.author,
			    study = param$report.study)
			}
	)

## ----detection.pvalue -------------------------------------------------------------
qc.objects %>% 
	meffil.load.detection.pvalues(verbose = param$verbose) %>%
	write_rds(file = file$detect.p)

## ----pc.plot -------------------------------------------------------------
y <- meffil.plot.pc.fit(qc.objects)

sapply(
	list(file$pc.fit.plot, 
		file.path(dir$reports, "qc", basename(file$pc.fit.plot))),
			function(i){
				ggsave(y$plot, 
					filename = i, 
					height = 6, 
					width = 6)
			}
	)

## ----norm -------------------------------------------------------------
norm.objects <- meffil.normalize.quantiles(
    qc.objects,
    number.pcs=pc, # set to 20 @top by visual inspection of pc plot
    verbose = param$verbose)

	norm.objects %>%
		write_rds(file = file$norm)

beta.meffil <- meffil.normalize.samples(
    norm.objects,
    just.beta=T, 
    cpglist.remove=qc.summary$bad.cpgs$name,
    verbose = param$verbose)


	beta.meffil %>%
		write_rds(file = file$betas)
 
## ----pcs--------------------------------------------------
pcs <- meffil.methylation.pcs(
    beta.meffil,
    sites=meffil.get.autosomal.sites("epic"),
    verbose = param$verbose)

## ----norm.summary -------------------------------------------------------------
parameters <- meffil.normalization.parameters(norm.objects)
parameters$batch.threshold <- 0.01
norm.summary <- meffil.normalization.summary(
    norm.objects=norm.objects,
    pcs=pcs,
    parameters=parameters,
    verbose = param$verbose)

## ----norm.report -------------------------------------------------------------
sapply(
	list(file$norm.report, 
		file.path(dir$reports, "normalization", basename(file$norm.report))),
			function(i){				
				meffil.normalization.report(
				    norm.summary,
				    output.file = i,
			    author = param$report.author,
			    study = param$report.study)
			}
	)
