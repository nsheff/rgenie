#' @importFrom basilisk BasiliskEnvironment
env1 <- BasiliskEnvironment("env1", pkgname="rgenie",
    packages=c("pandas==0.24.1", "python-dateutil==2.7.1", "pytz==2018.7"))

#' @importFrom basilisk BasiliskEnvironment
env2 <- BasiliskEnvironment("env2", pkgname="rgenie",
    packages=c("scikit-learn==0.21.1", "joblib==0.13.1"))

#' @importFrom basilisk BasiliskEnvironment
envRG <- BasiliskEnvironment("envRG", pkgname="rgenie",
    packages=c("refgenconf== 0.9.0"))
