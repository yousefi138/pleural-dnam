# Normalization performance report
- study: pleural-dnam-pilot
- author: Paul Yousefi
- date: 13 September, 2023

## Parameters used to test normalization


```
## $variables
##  [1] "Slide"          "sentrix_row"    "sentrix_col"    "ID"            
##  [5] "DNA Type"       "inputgender"    "sex_v2"         "sam_code"      
##  [9] "MSA4Plate_id"   "BCD_id"         "BCD_barcode"    "study"         
## [13] "projectid"      "malignant"      "case.status"    "vials.received"
## [17] "box"           
## 
## $control.pcs
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $batch.pcs
##  [1]  1  2  3  4  5  6  7  8  9 10
## 
## $batch.threshold
## [1] 0.01
## 
## $colours
## NULL
```

## Control probe scree plots

The variance captured by each principal component.






![plot of chunk unnamed-chunk-19](figure/unnamed-chunk-19-1.png)




![plot of chunk unnamed-chunk-20](figure/unnamed-chunk-20-1.png)




![plot of chunk unnamed-chunk-21](figure/unnamed-chunk-21-1.png)

## Principal components of the control probes

The following plots show the first 3 principal components of the
control matrix colored by batch variables.
Batch variables with more than 10 levels are omitted.






![plot of chunk unnamed-chunk-23](figure/unnamed-chunk-23-1.png)






![plot of chunk unnamed-chunk-25](figure/unnamed-chunk-25-1.png)






![plot of chunk unnamed-chunk-27](figure/unnamed-chunk-27-1.png)






![plot of chunk unnamed-chunk-29](figure/unnamed-chunk-29-1.png)






![plot of chunk unnamed-chunk-31](figure/unnamed-chunk-31-1.png)






![plot of chunk unnamed-chunk-33](figure/unnamed-chunk-33-1.png)






![plot of chunk unnamed-chunk-35](figure/unnamed-chunk-35-1.png)






![plot of chunk unnamed-chunk-37](figure/unnamed-chunk-37-1.png)






![plot of chunk unnamed-chunk-39](figure/unnamed-chunk-39-1.png)






![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-41-1.png)






![plot of chunk unnamed-chunk-43](figure/unnamed-chunk-43-1.png)






![plot of chunk unnamed-chunk-45](figure/unnamed-chunk-45-1.png)






![plot of chunk unnamed-chunk-47](figure/unnamed-chunk-47-1.png)






![plot of chunk unnamed-chunk-49](figure/unnamed-chunk-49-1.png)






![plot of chunk unnamed-chunk-51](figure/unnamed-chunk-51-1.png)

## Control probe associations with measured batch variables

Principal components of the control probes were regressed against batch variables.
Shown are the $-log_{10}$ p-values for these regressions.
The horizontal dotted line denotes $p = 0.05$ in log-scale.






![plot of chunk unnamed-chunk-53](figure/unnamed-chunk-53-1.png)






![plot of chunk unnamed-chunk-55](figure/unnamed-chunk-55-1.png)






![plot of chunk unnamed-chunk-57](figure/unnamed-chunk-57-1.png)






![plot of chunk unnamed-chunk-59](figure/unnamed-chunk-59-1.png)






![plot of chunk unnamed-chunk-61](figure/unnamed-chunk-61-1.png)






![plot of chunk unnamed-chunk-63](figure/unnamed-chunk-63-1.png)






![plot of chunk unnamed-chunk-65](figure/unnamed-chunk-65-1.png)






![plot of chunk unnamed-chunk-67](figure/unnamed-chunk-67-1.png)






![plot of chunk unnamed-chunk-69](figure/unnamed-chunk-69-1.png)






![plot of chunk unnamed-chunk-71](figure/unnamed-chunk-71-1.png)






![plot of chunk unnamed-chunk-73](figure/unnamed-chunk-73-1.png)






![plot of chunk unnamed-chunk-75](figure/unnamed-chunk-75-1.png)






![plot of chunk unnamed-chunk-77](figure/unnamed-chunk-77-1.png)






![plot of chunk unnamed-chunk-79](figure/unnamed-chunk-79-1.png)






![plot of chunk unnamed-chunk-81](figure/unnamed-chunk-81-1.png)






![plot of chunk unnamed-chunk-83](figure/unnamed-chunk-83-1.png)






![plot of chunk unnamed-chunk-85](figure/unnamed-chunk-85-1.png)


The following plots show regression coefficients when
each principal component is regressed against each batch variable level
along with 95% confidence intervals.
Cases significantly different from zero are coloured red
(p < 0.01, t-test).






![plot of chunk unnamed-chunk-86](figure/unnamed-chunk-86-1.png)




![plot of chunk unnamed-chunk-87](figure/unnamed-chunk-87-1.png)




![plot of chunk unnamed-chunk-88](figure/unnamed-chunk-88-1.png)




![plot of chunk unnamed-chunk-89](figure/unnamed-chunk-89-1.png)




![plot of chunk unnamed-chunk-90](figure/unnamed-chunk-90-1.png)




![plot of chunk unnamed-chunk-91](figure/unnamed-chunk-91-1.png)




![plot of chunk unnamed-chunk-92](figure/unnamed-chunk-92-1.png)




![plot of chunk unnamed-chunk-93](figure/unnamed-chunk-93-1.png)




![plot of chunk unnamed-chunk-94](figure/unnamed-chunk-94-1.png)




![plot of chunk unnamed-chunk-95](figure/unnamed-chunk-95-1.png)


|batch.variable |batch.value   |principal.component |test   |p.value  |estimate |lower   |upper   |r2     |
|:--------------|:-------------|:-------------------|:------|:--------|:--------|:-------|:-------|:------|
|Slide          |              |PC1                 |F-test |3.80e-20 |22.322   |        |        |0.7519 |
|Slide          |207563380070  |PC1                 |t-test |6.68e-04 |-6.738   |-11.070 |-2.4065 |0.1213 |
|Slide          |207563380076  |PC1                 |t-test |3.51e-07 |-9.132   |-12.891 |-5.3718 |0.2516 |
|Slide          |207563380082  |PC1                 |t-test |5.96e-03 |5.181    |1.015   |9.3477  |0.0810 |
|Slide          |207563380133  |PC1                 |t-test |3.10e-08 |10.083   |6.312   |13.8543 |0.2872 |
|sentrix_row    |01            |PC1                 |t-test |5.24e-03 |-4.566   |-8.174  |-0.9575 |0.0834 |
|Slide          |              |PC2                 |F-test |2.29e-03 |2.978    |        |        |0.2880 |
|Slide          |207563380030  |PC2                 |t-test |1.90e-04 |2.907    |1.217   |4.5970  |0.1487 |
|ID             |C1453TB       |PC2                 |t-test |1.18e-05 |6.820    |3.484   |10.1555 |0.1969 |
|ID             |C914JA        |PC2                 |t-test |2.03e-03 |4.697    |1.342   |8.0513  |0.1042 |
|DNA Type       |              |PC2                 |F-test |7.80e-07 |28.165   |        |        |0.2364 |
|DNA Type       |cell DNA      |PC2                 |t-test |4.05e-06 |-2.039   |-2.956  |-1.1224 |0.2155 |
|DNA Type       |cfDNA         |PC2                 |t-test |1.12e-07 |2.460    |1.519   |3.4012  |0.2725 |
|box            |NM2           |PC2                 |t-test |1.15e-03 |3.709    |1.205   |6.2132  |0.1138 |
|Slide          |              |PC4                 |F-test |1.13e-07 |6.531    |        |        |0.4700 |
|Slide          |207563380030  |PC4                 |t-test |1.22e-04 |1.536    |0.670   |2.4019  |0.1506 |
|Slide          |207563380139  |PC4                 |t-test |3.28e-04 |-1.443   |-2.318  |-0.5676 |0.1329 |
|Slide          |207563380152  |PC4                 |t-test |5.15e-03 |-1.211   |-2.168  |-0.2540 |0.0829 |
|Slide          |              |PC5                 |F-test |3.42e-09 |7.943    |        |        |0.5189 |
|Slide          |207563380030  |PC5                 |t-test |3.63e-12 |-1.490   |-1.910  |-1.0699 |0.4206 |
|Slide          |207563380046  |PC5                 |t-test |2.46e-03 |-0.677   |-1.169  |-0.1849 |0.0995 |
|ID             |C1441DF       |PC5                 |t-test |9.10e-03 |1.160    |0.172   |2.1480  |0.0748 |
|box            |M1            |PC5                 |t-test |9.97e-03 |-0.363   |-0.669  |-0.0573 |0.0715 |
|Slide          |207563380156  |PC6                 |t-test |3.57e-04 |-0.796   |-1.282  |-0.3104 |0.1355 |
|sentrix_row    |02            |PC6                 |t-test |5.11e-03 |0.488    |0.104   |0.8720  |0.0867 |
|ID             |C1431TE       |PC6                 |t-test |8.25e-03 |1.063    |0.170   |1.9572  |0.0775 |
|ID             |C1441DF       |PC6                 |t-test |6.73e-06 |1.875    |0.985   |2.7648  |0.2067 |
|ID             |C1444FK       |PC6                 |t-test |2.13e-03 |1.291    |0.364   |2.2177  |0.1022 |
|ID             |C914JA        |PC6                 |t-test |3.68e-03 |-1.219   |-2.147  |-0.2908 |0.0919 |
|Slide          |              |PC7                 |F-test |8.21e-07 |5.775    |        |        |0.4395 |
|Slide          |207563380082  |PC7                 |t-test |1.12e-06 |1.000    |0.567   |1.4341  |0.2327 |
|Slide          |207563380118  |PC7                 |t-test |4.34e-03 |-0.650   |-1.153  |-0.1466 |0.0869 |
|ID             |              |PC8                 |F-test |1.69e-03 |2.418    |        |        |0.7074 |
|ID             |C1400RT       |PC8                 |t-test |6.49e-03 |-1.025   |-1.861  |-0.1897 |0.0794 |
|ID             |C1431TE       |PC8                 |t-test |9.26e-03 |-0.982   |-1.820  |-0.1433 |0.0729 |
|ID             |C1450EW       |PC8                 |t-test |9.64e-03 |1.374    |0.193   |2.5538  |0.0721 |
|case.status    |non-malignant |PC8                 |t-test |4.26e-03 |-0.314   |-0.550  |-0.0767 |0.0872 |
|box            |              |PC8                 |F-test |9.54e-03 |4.048    |        |        |0.1201 |
|box            |NM1           |PC8                 |t-test |5.43e-04 |-0.378   |-0.613  |-0.1440 |0.1251 |
|Slide          |207563380156  |PC9                 |t-test |5.15e-03 |-0.512   |-0.917  |-0.1076 |0.0837 |
|ID             |C1441DF       |PC9                 |t-test |2.30e-03 |-1.130   |-1.949  |-0.3123 |0.0976 |
|Slide          |207563380133  |PC10                |t-test |7.98e-03 |-0.437   |-0.802  |-0.0723 |0.0781 |
|Slide          |207563380156  |PC10                |t-test |3.41e-03 |0.431    |0.107   |0.7546  |0.0954 |
|ID             |C119GM        |PC10                |t-test |7.36e-03 |0.744    |0.128   |1.3605  |0.0815 |
|ID             |C1404RL       |PC10                |t-test |8.82e-04 |-1.010   |-1.677  |-0.3440 |0.1213 |
|ID             |C1450EW       |PC10                |t-test |8.29e-03 |1.068    |0.169   |1.9670  |0.0783 |

## Principal components of the normalized betas

The following plots show the first 3 principal components of the
 most variable
probes colored by batch variables.
Batch variables with more than 10 levels are omitted.






![plot of chunk unnamed-chunk-97](figure/unnamed-chunk-97-1.png)






![plot of chunk unnamed-chunk-99](figure/unnamed-chunk-99-1.png)






![plot of chunk unnamed-chunk-101](figure/unnamed-chunk-101-1.png)






![plot of chunk unnamed-chunk-103](figure/unnamed-chunk-103-1.png)






![plot of chunk unnamed-chunk-105](figure/unnamed-chunk-105-1.png)






![plot of chunk unnamed-chunk-107](figure/unnamed-chunk-107-1.png)






![plot of chunk unnamed-chunk-109](figure/unnamed-chunk-109-1.png)






![plot of chunk unnamed-chunk-111](figure/unnamed-chunk-111-1.png)






![plot of chunk unnamed-chunk-113](figure/unnamed-chunk-113-1.png)






![plot of chunk unnamed-chunk-115](figure/unnamed-chunk-115-1.png)






![plot of chunk unnamed-chunk-117](figure/unnamed-chunk-117-1.png)






![plot of chunk unnamed-chunk-119](figure/unnamed-chunk-119-1.png)






![plot of chunk unnamed-chunk-121](figure/unnamed-chunk-121-1.png)






![plot of chunk unnamed-chunk-123](figure/unnamed-chunk-123-1.png)






![plot of chunk unnamed-chunk-125](figure/unnamed-chunk-125-1.png)

## Normalized probe associations with measured batch variables

The most variable normalized probes were extracted, decomposed into
principal components and each component regressed against each batch
variable. If the normalization has performed well then there will be
no associations between normalized probe PCs and batch
variables. Horizontal dotted line denotes $p = 0.05$ in log-scale.






![plot of chunk unnamed-chunk-127](figure/unnamed-chunk-127-1.png)






![plot of chunk unnamed-chunk-129](figure/unnamed-chunk-129-1.png)






![plot of chunk unnamed-chunk-131](figure/unnamed-chunk-131-1.png)






![plot of chunk unnamed-chunk-133](figure/unnamed-chunk-133-1.png)






![plot of chunk unnamed-chunk-135](figure/unnamed-chunk-135-1.png)






![plot of chunk unnamed-chunk-137](figure/unnamed-chunk-137-1.png)






![plot of chunk unnamed-chunk-139](figure/unnamed-chunk-139-1.png)






![plot of chunk unnamed-chunk-141](figure/unnamed-chunk-141-1.png)






![plot of chunk unnamed-chunk-143](figure/unnamed-chunk-143-1.png)






![plot of chunk unnamed-chunk-145](figure/unnamed-chunk-145-1.png)






![plot of chunk unnamed-chunk-147](figure/unnamed-chunk-147-1.png)






![plot of chunk unnamed-chunk-149](figure/unnamed-chunk-149-1.png)






![plot of chunk unnamed-chunk-151](figure/unnamed-chunk-151-1.png)






![plot of chunk unnamed-chunk-153](figure/unnamed-chunk-153-1.png)






![plot of chunk unnamed-chunk-155](figure/unnamed-chunk-155-1.png)






![plot of chunk unnamed-chunk-157](figure/unnamed-chunk-157-1.png)






![plot of chunk unnamed-chunk-159](figure/unnamed-chunk-159-1.png)

The following plots show regression coefficients when
each principal component is regressed against each batch variable level
along with 95% confidence intervals.
Cases significantly different from zero are coloured red
(p < 0.01, t-test).






![plot of chunk unnamed-chunk-160](figure/unnamed-chunk-160-1.png)




![plot of chunk unnamed-chunk-161](figure/unnamed-chunk-161-1.png)




![plot of chunk unnamed-chunk-162](figure/unnamed-chunk-162-1.png)




![plot of chunk unnamed-chunk-163](figure/unnamed-chunk-163-1.png)




![plot of chunk unnamed-chunk-164](figure/unnamed-chunk-164-1.png)




![plot of chunk unnamed-chunk-165](figure/unnamed-chunk-165-1.png)




![plot of chunk unnamed-chunk-166](figure/unnamed-chunk-166-1.png)




![plot of chunk unnamed-chunk-167](figure/unnamed-chunk-167-1.png)




![plot of chunk unnamed-chunk-168](figure/unnamed-chunk-168-1.png)




![plot of chunk unnamed-chunk-169](figure/unnamed-chunk-169-1.png)


|batch.variable |batch.value  |principal.component |test   |p.value  |estimate |lower   |upper   |r2     |
|:--------------|:------------|:-------------------|:------|:--------|:--------|:-------|:-------|:------|
|sentrix_row    |02           |PC1                 |t-test |4.36e-03 |20.56    |4.666   |36.461  |0.0859 |
|ID             |             |PC1                 |F-test |2.22e-16 |14.97    |        |        |0.9374 |
|ID             |C1033AH      |PC1                 |t-test |3.50e-03 |48.62    |11.790  |85.449  |0.0899 |
|ID             |C1431TE      |PC1                 |t-test |3.66e-03 |48.40    |11.553  |85.245  |0.0891 |
|Slide          |207563380126 |PC2                 |t-test |1.29e-04 |18.76    |8.167   |29.361  |0.1610 |
|sentrix_row    |03           |PC2                 |t-test |9.59e-07 |23.39    |13.377  |33.398  |0.2473 |
|ID             |             |PC2                 |F-test |2.78e-18 |18.54    |        |        |0.9488 |
|ID             |C1033AH      |PC2                 |t-test |1.87e-03 |-18.16   |-31.014 |-5.312  |0.1132 |
|ID             |C1143RW      |PC2                 |t-test |2.12e-04 |22.62    |9.349   |35.884  |0.1550 |
|ID             |C1146AP      |PC2                 |t-test |2.04e-22 |79.43    |65.923  |92.933  |0.6831 |
|ID             |C119GM       |PC2                 |t-test |1.46e-18 |71.95    |57.529  |86.369  |0.6081 |
|ID             |C1431TE      |PC2                 |t-test |1.32e-03 |-18.72   |-31.516 |-5.915  |0.1202 |
|ID             |C1437AS      |PC2                 |t-test |1.23e-05 |27.58    |14.103  |41.054  |0.2090 |
|ID             |C1444FK      |PC2                 |t-test |9.86e-10 |40.94    |27.434  |54.449  |0.3641 |
|ID             |C1450EW      |PC2                 |t-test |1.79e-16 |86.42    |67.350  |105.486 |0.5647 |
|ID             |C1469TW      |PC2                 |t-test |2.55e-04 |22.77    |9.225   |36.317  |0.1513 |
|malignant      |             |PC2                 |F-test |7.61e-04 |12.14    |        |        |0.1177 |
|case.status    |             |PC2                 |F-test |7.61e-04 |12.14    |        |        |0.1177 |
|case.status    |malignant    |PC2                 |t-test |7.61e-04 |14.27    |5.231   |23.309  |0.1177 |
|box            |             |PC2                 |F-test |8.27e-03 |4.16     |        |        |0.1231 |
|box            |M1           |PC2                 |t-test |6.78e-04 |14.24    |5.277   |23.203  |0.1223 |
|box            |M2           |PC2                 |t-test |2.84e-03 |12.85    |3.369   |22.326  |0.1024 |
|sentrix_row    |01           |PC3                 |t-test |8.56e-03 |-4.34    |-7.980  |-0.690  |0.0794 |
|ID             |             |PC3                 |F-test |3.80e-14 |11.56    |        |        |0.9204 |
|ID             |C1143RW      |PC3                 |t-test |1.27e-08 |-15.28   |-20.786 |-9.771  |0.3214 |
|ID             |C1146AP      |PC3                 |t-test |3.14e-05 |10.60    |5.122   |16.070  |0.1874 |
|ID             |C119GM       |PC3                 |t-test |4.73e-06 |11.54    |6.183   |16.905  |0.2242 |
|ID             |C1437AS      |PC3                 |t-test |1.26e-03 |-8.17    |-13.739 |-2.605  |0.1184 |
|ID             |C1444FK      |PC3                 |t-test |4.03e-24 |-34.29   |-39.767 |-28.819 |0.7072 |
|ID             |C1450EW      |PC3                 |t-test |9.89e-04 |11.63    |3.881   |19.376  |0.1232 |
|ID             |C1456PW      |PC3                 |t-test |4.76e-04 |-8.23    |-13.375 |-3.087  |0.1391 |
|DNA Type       |cell DNA     |PC3                 |t-test |4.32e-03 |-3.34    |-5.855  |-0.821  |0.0899 |
|box            |             |PC3                 |F-test |1.50e-04 |7.54     |        |        |0.2027 |
|box            |M2           |PC3                 |t-test |2.34e-07 |-12.63   |-17.715 |-7.535  |0.2739 |
|Slide          |207563380082 |PC4                 |t-test |3.06e-03 |-3.30    |-5.748  |-0.847  |0.1009 |
|Slide          |207563380117 |PC4                 |t-test |3.28e-03 |3.67     |0.923   |6.424   |0.0995 |
|Slide          |207563380118 |PC4                 |t-test |4.43e-03 |-3.94    |-6.997  |-0.885  |0.0935 |
|ID             |             |PC4                 |F-test |6.37e-12 |8.83     |        |        |0.8983 |
|ID             |C1146AP      |PC4                 |t-test |9.66e-22 |-24.12   |-28.353 |-19.890 |0.6667 |
|ID             |C119GM       |PC4                 |t-test |2.49e-23 |27.93    |23.336  |32.533  |0.6943 |
|ID             |C1437AS      |PC4                 |t-test |2.33e-06 |-9.73    |-14.097 |-5.373  |0.2369 |
|ID             |C1444FK      |PC4                 |t-test |9.09e-06 |8.48     |4.402   |12.556  |0.2123 |
|ID             |C1450EW      |PC4                 |t-test |7.70e-07 |-14.02   |-19.982 |-8.054  |0.2563 |
|ID             |C1469TW      |PC4                 |t-test |1.74e-05 |8.45     |4.236   |12.671  |0.1982 |
|ID             |             |PC5                 |F-test |3.56e-10 |7.07     |        |        |0.8761 |
|ID             |C1001PB      |PC5                 |t-test |3.89e-03 |9.03     |2.113   |15.956  |0.0928 |
|ID             |C1011PA      |PC5                 |t-test |1.89e-03 |-9.69    |-16.554 |-2.817  |0.1067 |
|ID             |C1143RW      |PC5                 |t-test |9.53e-03 |8.15     |1.165   |15.139  |0.0756 |
|ID             |C119GM       |PC5                 |t-test |1.43e-03 |-10.42   |-17.611 |-3.230  |0.1108 |
|ID             |C1440LC      |PC5                 |t-test |5.08e-04 |11.41    |4.231   |18.588  |0.1304 |
|ID             |C1469TW      |PC5                 |t-test |8.25e-10 |21.90    |14.668  |29.123  |0.3500 |
|Slide          |207563380156 |PC6                 |t-test |4.42e-03 |-4.93    |-8.761  |-1.106  |0.0865 |
|ID             |             |PC6                 |F-test |9.44e-08 |5.06     |        |        |0.8351 |
|ID             |C119GM       |PC6                 |t-test |9.78e-04 |-11.44   |-19.065 |-3.816  |0.1132 |
|Slide          |207563380030 |PC7                 |t-test |1.41e-03 |3.79     |1.189   |6.391   |0.1150 |
|ID             |             |PC7                 |F-test |9.77e-14 |11.01    |        |        |0.9168 |
|ID             |C1143RW      |PC7                 |t-test |4.08e-07 |-12.79   |-18.084 |-7.488  |0.2592 |
|ID             |C1146AP      |PC7                 |t-test |2.21e-05 |-10.43   |-15.715 |-5.150  |0.1898 |
|ID             |C1437AS      |PC7                 |t-test |5.07e-05 |9.92     |4.635   |15.201  |0.1747 |
|ID             |C1450EW      |PC7                 |t-test |4.76e-07 |17.91    |10.442  |25.383  |0.2592 |
|ID             |C1453TB      |PC7                 |t-test |7.27e-03 |6.19     |1.075   |11.311  |0.0827 |
|ID             |C1469TW      |PC7                 |t-test |5.41e-03 |6.41     |1.305   |11.509  |0.0885 |
|ID             |C960RH       |PC7                 |t-test |3.14e-03 |-6.78    |-11.856 |-1.712  |0.0992 |
|DNA Type       |cell DNA     |PC7                 |t-test |8.77e-03 |-2.09    |-3.809  |-0.367  |0.0763 |
|vials.received |             |PC7                 |F-test |3.39e-03 |9.05     |        |        |0.0905 |
|sentrix_row    |05           |PC8                 |t-test |1.74e-03 |-3.41    |-5.801  |-1.024  |0.1072 |
|ID             |             |PC8                 |F-test |1.30e-08 |5.72     |        |        |0.8513 |
|ID             |C1409EC      |PC8                 |t-test |5.36e-03 |6.70     |1.370   |12.026  |0.0867 |
|ID             |C1437AS      |PC8                 |t-test |1.87e-03 |7.76     |2.261   |13.252  |0.1058 |
|ID             |C1440LC      |PC8                 |t-test |1.94e-03 |7.72     |2.230   |13.200  |0.1051 |
|ID             |C1444FK      |PC8                 |t-test |4.96e-06 |-11.81   |-17.319 |-6.294  |0.2120 |
|ID             |C1469TW      |PC8                 |t-test |8.72e-03 |6.76     |1.035   |12.480  |0.0764 |
|ID             |C914JA       |PC8                 |t-test |6.00e-03 |-6.61    |-11.947 |-1.278  |0.0845 |
|sentrix_row    |03           |PC9                 |t-test |4.31e-03 |1.40     |0.320   |2.476   |0.0930 |
|ID             |             |PC9                 |F-test |3.58e-30 |65.48    |        |        |0.9850 |
|ID             |C1143RW      |PC9                 |t-test |9.79e-43 |-17.52   |-19.018 |-16.027 |0.8942 |
|ID             |C1146AP      |PC9                 |t-test |1.67e-29 |11.02    |9.578   |12.468  |0.7818 |
|ID             |C1443AB      |PC9                 |t-test |1.92e-03 |1.94     |0.562   |3.309   |0.1114 |
|ID             |C1444FK      |PC9                 |t-test |9.88e-19 |7.38     |5.905   |8.849   |0.6073 |
|ID             |C1450EW      |PC9                 |t-test |2.11e-39 |-21.68   |-23.719 |-19.647 |0.8761 |
|ID             |C1469TW      |PC9                 |t-test |9.29e-10 |4.37     |2.926   |5.805   |0.3615 |
|ID             |C960RH       |PC9                 |t-test |8.93e-03 |-1.65    |-3.042  |-0.248  |0.0805 |
|box            |M2           |PC9                 |t-test |2.73e-08 |3.11     |1.961   |4.267   |0.3092 |
|Slide          |207563380126 |PC10                |t-test |4.20e-04 |3.91     |1.496   |6.333   |0.1325 |
|sentrix_row    |01           |PC10                |t-test |8.33e-03 |-2.65    |-4.874  |-0.429  |0.0765 |
|ID             |             |PC10                |F-test |5.59e-07 |4.51     |        |        |0.8186 |
|ID             |C1143RW      |PC10                |t-test |8.60e-05 |-8.24    |-12.793 |-3.696  |0.1616 |
|ID             |C1146AP      |PC10                |t-test |5.18e-03 |-5.45    |-9.770  |-1.132  |0.0864 |
|ID             |C1441DF      |PC10                |t-test |1.82e-03 |-6.05    |-10.318 |-1.774  |0.1063 |
|ID             |C1450EW      |PC10                |t-test |8.85e-06 |13.12    |6.801   |19.439  |0.2020 |
|ID             |C1453TB      |PC10                |t-test |1.05e-07 |-11.55   |-16.082 |-7.016  |0.2735 |
|ID             |C960RH       |PC10                |t-test |6.47e-03 |5.32     |0.986   |9.645   |0.0821 |
|DNA Type       |cell DNA     |PC10                |t-test |3.82e-03 |1.73     |0.444   |3.024   |0.0912 |
|DNA Type       |cfDNA        |PC10                |t-test |3.80e-03 |-2.17    |-3.785  |-0.556  |0.0894 |
|box            |NM2          |PC10                |t-test |3.03e-03 |-4.86    |-8.471  |-1.240  |0.0945 |

## R session information


```
## R version 4.1.1 (2021-08-10)
## Platform: x86_64-conda-linux-gnu (64-bit)
## Running under: CentOS Linux 7 (Core)
## 
## Matrix products: default
## BLAS/LAPACK: /data/py16069/miniconda2/envs/alspac/lib/libopenblasp-r0.3.18.so
## 
## locale:
##  [1] LC_CTYPE=en_GB.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_GB.UTF-8        LC_COLLATE=en_GB.UTF-8    
##  [5] LC_MONETARY=en_GB.UTF-8    LC_MESSAGES=en_GB.UTF-8   
##  [7] LC_PAPER=en_GB.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_GB.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] parallel  stats     graphics  grDevices utils     datasets  methods  
## [8] base     
## 
## other attached packages:
##  [1] readxl_1.3.1          meffil_1.3.6          preprocessCore_1.56.0
##  [4] SmartSVA_0.1.3        RSpectra_0.16-0       isva_1.9             
##  [7] JADE_2.0-3            qvalue_2.24.0         gdsfmt_1.28.1        
## [10] statmod_1.4.36        quadprog_1.5-8        DNAcopy_1.66.0       
## [13] fastICA_1.2-3         lme4_1.1-27.1         Matrix_1.3-4         
## [16] multcomp_1.4-17       TH.data_1.1-0         survival_3.2-13      
## [19] mvtnorm_1.1-3         matrixStats_0.61.0    markdown_1.1         
## [22] gridExtra_2.3         Cairo_1.5-12.2        knitr_1.35           
## [25] reshape2_1.4.4        plyr_1.8.6            sva_3.40.0           
## [28] BiocParallel_1.28.1   genefilter_1.76.0     mgcv_1.8-38          
## [31] nlme_3.1-153          limma_3.50.0          sandwich_3.0-1       
## [34] lmtest_0.9-39         zoo_1.8-9             MASS_7.3-54          
## [37] illuminaio_0.36.0     forcats_0.5.1         stringr_1.4.0        
## [40] dplyr_1.0.7           purrr_0.3.4           readr_2.1.0          
## [43] tidyr_1.1.4           tibble_3.1.6          ggplot2_3.3.5        
## [46] tidyverse_1.3.1      
## 
## loaded via a namespace (and not attached):
##  [1] minqa_1.2.4            colorspace_2.0-2       ellipsis_0.3.2        
##  [4] XVector_0.34.0         fs_1.5.0               base64_2.0            
##  [7] clue_0.3-60            rstudioapi_0.13        farver_2.1.0          
## [10] bit64_4.0.5            AnnotationDbi_1.56.2   fansi_1.0.4           
## [13] lubridate_1.8.0        xml2_1.3.2             codetools_0.2-18      
## [16] splines_4.1.1          cachem_1.0.6           jsonlite_1.7.2        
## [19] nloptr_1.2.2.3         broom_0.7.10           annotate_1.72.0       
## [22] cluster_2.1.2          dbplyr_2.1.1           png_0.1-7             
## [25] compiler_4.1.1         httr_1.4.2             backports_1.4.0       
## [28] assertthat_0.2.1       fastmap_1.1.0          cli_3.6.1             
## [31] tools_4.1.1            gtable_0.3.0           glue_1.6.2            
## [34] GenomeInfoDbData_1.2.7 Rcpp_1.0.7             Biobase_2.54.0        
## [37] cellranger_1.1.0       vctrs_0.3.8            Biostrings_2.62.0     
## [40] xfun_0.28              rvest_1.0.2            mime_0.12             
## [43] lifecycle_1.0.1        XML_3.99-0.8           edgeR_3.34.1          
## [46] zlibbioc_1.40.0        scales_1.1.1           vroom_1.5.6           
## [49] hms_1.1.1              memoise_2.0.0          stringi_1.7.5         
## [52] RSQLite_2.2.8          highr_0.9              S4Vectors_0.32.3      
## [55] BiocGenerics_0.40.0    boot_1.3-28            GenomeInfoDb_1.30.0   
## [58] rlang_0.4.12           pkgconfig_2.0.3        bitops_1.0-7          
## [61] evaluate_0.14          lattice_0.20-45        labeling_0.4.2        
## [64] bit_4.0.4              tidyselect_1.1.1       magrittr_2.0.3        
## [67] R6_2.5.1               IRanges_2.28.0         generics_0.1.3        
## [70] DBI_1.1.1              pillar_1.6.4           haven_2.4.3           
## [73] withr_2.5.0            KEGGREST_1.34.0        RCurl_1.98-1.5        
## [76] modelr_0.1.8           crayon_1.4.2           utf8_1.2.3            
## [79] tzdb_0.2.0             locfit_1.5-9.4         grid_4.1.1            
## [82] blob_1.2.2             digest_0.6.28          reprex_2.0.1          
## [85] xtable_1.8-4           openssl_1.4.5          stats4_4.1.1          
## [88] munsell_0.5.0          askpass_1.1
```
