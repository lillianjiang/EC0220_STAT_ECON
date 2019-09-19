log using analysis/jiang_ps6_2.log
scatter sbp gestage
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/scatter_infant.gph"
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/scatter_infant.gph", replace
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/scatter_infant.gph", replace
regress gestage sbp
regress gestage sbp, by(sex)
regress gestage sbp, if sex ==0
regress gestage sbp if sex ==0
regress gestage sbp if sex == 1
desc sex
 label list sex
scatter sbp gestage if sex == 0
twoway(scatter sbp gestage) (lfit sbp gestage), by(sex)
