################################################################################
#                   imputing tissue transcriptome for bipolar data                 #
################################################################################
rm(list = ls())
gc()
source("/Dedicated/jmichaelson-wdata/msmuhammad/msmuhammad-source.R")
################################################################################
################################################################################
project.dir <- "/Dedicated/jmichaelson-wdata/msmuhammad/projects/bipolar"
setwd(project.dir)
################################################################################
source("/Dedicated/jmichaelson-wdata/msmuhammad/pipelines/tx-imputation/01_tx-imputation-functions.R")
################################################################################
genotypes.path <- "/Dedicated/jmichaelson-wdata/lcasten/bipolar_clean/qc_196_samples_Apr22/imputed_geno/michigan_imputation_server_out/hard_calls/final_data/bipolar_apr22_hard_calls"
# subset genotypes to keep the ones with known weight or eQTL effect
subset_genotypes(genotypes_path_base_name = genotypes.path, 
                 tissue_type = "all",
                 project_dir = project.dir, 
                 verbose = T,  
                 with_chr = F,
                 celltype = T, 
                 tissue = T)
################################################################################
# impute transcriptome and save it
impute.tx(project_dir = project.dir, 
          tissue_type = "all", 
          with_chr = F,
          celltype = T, 
          tissue = T, 
          verbose = T)

################################################################################



################################################################################