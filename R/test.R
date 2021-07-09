#' Test function
#'
#' Does nothing but test that we can load modules from different virtual environments.
#'
#' @return A list of names of objects exposed in each module.
#' @author Aaron Lun
#' 
#' @examples
#' test()
#' @export
#' @importFrom reticulate import
#' @importFrom basilisk basiliskStart basiliskRun basiliskStop
test <- function() {
    cl <- basiliskStart(env1)
    pandas.names <- basiliskRun(cl, function() { 
        X <- reticulate::import("pandas")
        names(X) 
    })
    basiliskStop(cl)

    cl <- basiliskStart(env2)
    sklearn.names <- basiliskRun(cl, function() { 
        X <- reticulate::import("sklearn.ensemble")
        names(X)
    })
    basiliskStop(cl)

    list(pandas=pandas.names, sklearn=sklearn.names)
}

#' @export
start = function() {
    rgcmodule = reticulate::import("refgenconf", convert=FALSE)
    rgc = rgcmodule$RefGenConf(Sys.getenv("REFGENIE"))
    rgc
}

#' @export
startB = function() {
    cl = basiliskStart(envRG)
    rgcmodule = basiliskRun(cl, function() { 
        rgcmodule = reticulate::import("refgenconf", convert=FALSE)
    })
    rgc = rgcmodule$RefGenConf(Sys.getenv("REFGENIE"))
    rgc
}

setClass("RefGenie",
         slots = c(
             file = "character",
             config = "list"
         ))



x = reticulate::import("refgenconf", convert=TRUE)
rgc2 = x$RefGenConf(Sys.getenv("REFGENIE"))




mod = reticulate::import("refgenconf", convert=TRUE)
rgc1 = mod$RefGenConf(Sys.getenv("REFGENIE"))
class(rgc1)
assign("convert", TRUE, envir = mod)
rgc1$seek("t7", "fasta")



mod2 = reticulate::import("refgenconf", convert=FALSE)
rgc2 = mod2$RefGenConf(Sys.getenv("REFGENIE"))
class(rgc2)
rgc2$seek("t7", "fasta")
class(rgc2$seek("t7", "fasta"))
reticulate::py_to_r(rgc2$seek("t7", "fasta"))
assign("convert", TRUE, envir = rgc2)
rgc2$seek("t7", "fasta")



mod = reticulate::import("refgenconf", convert=FALSE)
rgc = mod$RefGenConf(Sys.getenv("REFGENIE"))
rgc$pull("hg38", "bowtie2_index", "default")
rgc$seek("hg38", "bowtie2_index"))

