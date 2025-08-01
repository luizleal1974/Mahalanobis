# Mahalanobis

<p align="justify"><a target='_blank' rel='noopener noreferrer' href='https://doi.org/10.1016/j.jesp.2017.09.011' title=''><code>Leys, 2018</code></a> propôs <i>Mahalanobis-MCD distance</i> que consiste em um método multivariado robusto de detecção de outlier baseado no <i>Minimum Covariance Determinant</i> (MCD).</p>

<p align="justify">Este repositório diponibiliza o método multivariado de detecção de outier baseado na distância de Mahalanobis (<a target='_blank' rel='noopener noreferrer' href='https://doi.org/10.1016/j.stamet.2008.12.005' title=''><code>Fauconnier, 2009</code></a>):</p>

<p align="justify">
&bull; Simples

&bull; Robusta (<a target='_blank' rel='noopener noreferrer' href='https://github.com/luizleal1974/Mahalanobis/blob/main/Files/Mahalanobis_MCD.pdf'><code>PDF</code></a>)
</p>

```{r}
# Carregar função do GitHub
path = "https://github.com/luizleal1974/Mahalanobis/raw/main/Files/Mahalanobis_OD.R"
devtools::source_url(path)

# Dados
X1 = c( 1889, 2403, 2119, 1645, 1976, 1712, 1943, 2104, 2983, 1745, 1710, 2046, 1840, 1867, 1859, 1954, 1325, 1419, 1828, 1725, 2276, 1899, 1633, 2061, 1856, 1727, 2168, 1655, 2326, 1490)
X2 = c( 1651, 2048, 1700, 1627, 1916, 1712, 1685, 1820, 2794, 1600, 1591, 1907, 1841, 1685, 1649, 2149, 1170, 1371, 1634, 1594, 2189, 1614, 1513, 1867, 1493, 1412, 1896, 1675, 2301, 1382)
X3 = c( 1561, 2087, 1815, 1110, 1614, 1439, 1271, 1717, 2412, 1384, 1518, 1627, 1595, 1493, 1389, 1180, 1002, 1252, 1602, 1313, 1547, 1422, 1290, 1646, 1356, 1238, 1701, 1414, 2065, 1214)
X4 = c( 1778, 2197, 2222, 1533, 1883, 1546, 1671, 1874, 2581, 1508, 1667, 1898, 1741, 1678, 1714, 1281, 1176, 1308, 1755, 1646, 2111, 1477, 1516, 2037, 1533, 1469, 1834, 1597, 2234, 1284)
dados = data.frame(X1, X2, X3, X4)

# Mahalanobis
Mahalanobis_OD(dados, alpha = 0.05, type = "simple")$out
Mahalanobis_OD(dados, alpha = 0.05, type = "robust")$out
```

</br>
