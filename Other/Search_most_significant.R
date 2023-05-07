
library(data.table)

# read GWAS summary statistics
gwas <- as.data.frame(fread("Left_handedness.txt",header=T))

head(gwas)

str(gwas)
summary(as.factor(gwas$CHR))

gwas[gwas$P == min(gwas$P),1]

cp <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Leisure_Computer_Use.txt"))
head(cp)
nrow(cp) #19400417

dn <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Daytime_Napping.txt"))
head(dn)
nrow(dn) #13304132

library(dplyr) 

ba <- ba %>% mutate_at('P_BOLT_LMM_INF', as.numeric)

ba <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Baldness.txt"))
str(ba)
nrow(ba) #19123862
class(ba$P_BOLT_LMM[1])
fwrite(ba,"/Users/hazelma/ldsc/HW5/sumstats/Baldness_processed.txt")

sp <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Schizophrenia.vcf.tsv"))
head(sp)
str(sp)
nrow(sp) #7659767
colnames(sp)
fwrite(sp,"/Users/hazelma/ldsc/HW5/sumstats/Schizophrenia.txt",sep=" ")

Cannabis_Dependence

cd <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Cannabis_Dependence.txt"))
head(cd)
nrow(cd) #8957569

Insomnia

is <- as.data.frame(fread("/Users/hazelma/ldsc/HW5/sumstats/Insomnia.txt"))
head(is)
nrow(is) #12663596
str(is)

colnames(is)
is1 <- is[,c(2:13,15)]
head(is1)

fwrite(is1,"/Users/hazelma/ldsc/HW5/sumstats/Insomnia_edit.txt",sep=" ")

install.packages("data.table",dependencies=TRUE)
install.packages(optparse)
install.packages(BEDMatrix)
library(parallel)


install.packages(c('optparse','RColorBrewer'))
install.packages("remotes")
remotes::install_github("oujenhsiang/PLINK2R")
