
# Mahalanobis Outlier Detection
  Mahalanobis_OD = function(data, alpha = 0.05, type = "simple"){
  if(type == "simple"){m = colMeans(data); s = cov(data)}
  if(type == "robust"){ # Mahalanobis-MCD (Minimum Covariance Determinant)
   library(rrcov)       # References: https://doi.org/10.1016/j.jesp.2017.09.011
    cD <- CovMcd(dados) #             https://doi.org/10.1016/j.stamet.2008.12.005
      m = getCenter(cD)
       s = getCov(cD)
        }
   d2 = t(t(mahalanobis(data,center = m, cov = s)))
    df = ncol(data)
     pval = 1 - pchisq(d2, df)
      Decision = ifelse(pval > alpha, "FTR H0", "Reject H0")
       Mahalanobis = data.frame(data, d2, p_value = pval, Decision)
        if(type == "simple"){colnames(Mahalanobis)[ncol(data) + 1] = "d2_simple"}
        if(type == "robust"){colnames(Mahalanobis)[ncol(data) + 1] = "d2_robust"}
         out = subset(Mahalanobis, Decision == "Reject H0")
          list(Mahalanobis = Mahalanobis, out = out, df = df)
           }

