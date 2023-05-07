# If you are interested, see https://cran.r-project.org/web/packages/qqman/vignettes/qqman.html for detailed tutorials

# load R packages
library(qqman)
library(data.table)

# read GWAS summary statistics
gwas <- as.data.frame(fread("Left_handedness.txt",header=T))

head(gwas)

str(gwas)
summary(as.factor(gwas$CHR))

checkchq <- as.numeric(gwas$CHR)
gwas[is.na(checkchq),16] <- 23
gwas$CHR <- as.numeric(gwas$CHR)

# make manhattan plot
png("manhattan.png",units="in",width = 15,height = 8,res=300)
manhattan(gwas,chr="CHR",bp="BP",p="P",snp="SNP",suggestiveline=F,genomewideline=-log10(5e-08))
dev.off()

# make QQ plot
png("qqplot.png",units="in",width=8,height=8,res=300)
qq(gwas$P)
dev.off()

# print genomic inflation factor
(lambda=median((qnorm(gwas$P/2,0,1))^2)/qchisq(0.5,1))

