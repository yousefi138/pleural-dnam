#mkdir betas control_matrix derived detection_p_values norm_objects qc_objects samplesheet

## ----globals -------------------------------------------------------------
# conda activate alspac
# R CMD BATCH --vanilla '' &
################################################################################
# File: pleural-dnam-prep-release-2023-09-05.r
# Purpose: 
#   
# Created: 
# Run on: epi-franklin
################################################################################
packages <- c("tidyverse", "meffil") 
lapply(packages, require, character.only=T)


options(mc.cores=16)
packageVersion("meffil")

dir <- '/projects/MRC-IEU/research/projects/ieu3/p4/004/working/'
dir.data <- file.path(dir, 'data/pleural-dnam/releases/2023-09-05')
dir.scripts <- file.path(dir, 'scripts/pleural-dnam')

## ---- -------------------------------------------------------------
samplesheet <- meffil.create.samplesheet(dir.data, recursive=TRUE)


## ---- -------------------------------------------------------------
meffil.list.cell.type.references()
qc.objects <- meffil.qc(samplesheet, cell.type.reference="blood gse35069 complete", verbose=TRUE)
save(qc.objects,file="qc.objects.Robj")




