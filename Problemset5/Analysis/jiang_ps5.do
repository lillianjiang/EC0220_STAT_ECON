log using Analysis/jiang_ps5.log, replace
sum pdi
ztest pdi=100, sd(15.85104)
ztesti 143 94.78322 15.85104 100, level(99.9)
sum mdi
ztest pdi==100, sd(15.60437)
. ztest mdi==100, sd(15.60437)
ztesti 144 104.7361 15.60437 100, level(99.9)
mean pdi
mean mdi
cmd close
