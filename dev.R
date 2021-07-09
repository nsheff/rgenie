# helps for R package development

# Set the packageName variable to the name of the package,
# then run the devtools tests and checks

packageName="rgenie"
packageFolder=paste0("~/code/", packageName)
devtools::document(packageFolder)
devtools::install(packageFolder, upgrade="never")
devtools::test(packageFolder)
devtools::run_examples(packageFolder)
devtools::check(packageFolder)
devtools::build_vignettes(packageFolder)


library(rgenie)
rg = rgenie::start()
rg$seek("hg38", "bowtie2_index")
p = rg$seek("hg38", "fasta")
p
rg$list("hg38")

data.table::fread(as.character(rg$seek("hg38", "gencode_gtf")))

x = startB()

rg$pull("t7", "bowtie2_index", "default")


