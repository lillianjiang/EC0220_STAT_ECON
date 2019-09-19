log using analysis/jiang_ps6.log
scatter bac beers
regress bac beers
twoway(scatter bac beers) (lfit bac beers)
gen limit == (bac > 0.08) 
gen limit = (bac > 0.08) 
ci limit, level(80)
ci limit
help
sum limit
means limit, level(80)
mean limit, level(80)
