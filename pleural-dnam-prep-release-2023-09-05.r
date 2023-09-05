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

dir <- '/projects/MRC-IEU/research/projects/ieu3/p4/004/working/'
dir.data <- file.path(dir, 'data/pleural-dnam/raw')
dir.scripts <- file.path(dir, 'scripts/pleural-dnam')
dir.out <- file.path(dir, 'data/pleural-dnam/releases/2023-09-05')

## ----samplesheet -------------------------------------------------------------
meffil.samplesheet <- meffil.create.samplesheet(dir.data, recursive=TRUE)
bbl.samplesheet <- read_xlsx(file.path(dir.data, "Sentrix_link.xlsx"))

samplesheet <- meffil.samplesheet %>% 
				inner_join(bbl.samplesheet, by = c("Sample_Name" = "sentrix")) 


## ---- -------------------------------------------------------------
meffil.list.cell.type.references()
##	> meffil.list.cell.type.references()
## [1] "andrews and bakulski cord blood" "blood gse35069"
## [3] "blood gse35069 chen"             "blood gse35069 complete"
## [5] "combined cord blood"             "cord blood gse68456"
## [7] "gervin and lyle cord blood"      "guintivano dlpfc"
## [9] "saliva gse48472"

## possible options:
##	"blood gse35069"
## [3] "blood gse35069 chen"             "blood gse35069 complet

# error because epic 2 chips 
qc.objects <- meffil.qc(samplesheet, 
				cell.type.reference = "NA", 
				verbose = TRUE)

save(qc.objects, file = "qc.objects.Robj")
write_rds(qc.objects, file = "qc.objects.rds")



