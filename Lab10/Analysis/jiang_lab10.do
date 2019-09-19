log using analysis/jiang_lab10.log
sum rate if sex ==1
sum rate if sex == 0
sum mass if sex==1
sum mass if sex ==0
scatter rate mass if sex == 0
scatter rate mass if sex == 1
twoway (scatter rate mass) (lfit rate mass), by(sex)
graph save Graph "C:\Users\ljiang\Desktop\ECO220\Labs\Lab10\Analysis\bestfit line.gph"
regress rate mass if sex==1
regress rate mass if sex==0
