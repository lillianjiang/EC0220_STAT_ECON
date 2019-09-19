log using analysis/jiang_ps6_3.log
sum violent_crime_rate
sum violent_crime_rate, d
histogram violent_crime_rate, frequency
histogram violent_crime_rate, bin(15) frequency
histogram  violent_crime_rate if  violent_crime_rate<1508, bin(15) frequency
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/3_bin=15 w:o outline.gph"
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/3_bin=15 w:o outline.gph", replace
sum police, d
sum violent_crime_rate, d if police < 190
sum violent_crime_rate, d, if police < 190
sum violent_crime_rate, d, if police >= 190
regress violent_crime_rate poverty
regress violent_crime_rate single_parent
regress violent_crime_rate umeployed
regress violent_crime_rate unemployed
twoway(scatter violent_crime_rate poverty) (lfit violent_crime_rate poverty)
twoway(scatter violent_crime_rate single_parent) (lfit violent_crime_rate single_parent)
twoway(scatter violent_crime_rate unemployed) (lfit violent_crime_rate unemployed)
graph save Graph "/Users/yushujiang/Desktop/ECO220/Labs/Problemset6/Analysis/3_unemployed.gph"
sum high_schoo;
sum high_school
gen literate == (high_school > 85)
gen literate = (high_school > 85)
sum violent_crime_rate if literate ==1
sum violent_crime_rate if literate == 0
regress violent_crime_rate literate
regress violent_crime_rate literate poverty single_parent unemployed
