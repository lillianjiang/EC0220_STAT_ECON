clear 
import excel "C:\Users\ljiang\Desktop\ECO220\Labs\Lab0\Data\welfare.xls", sheet("Data") firstrow
save welfare.dta, replace
cd /Users/ljiang/Desktop/ECO220/Labs/Lab0
log using Analysis/jiang_lab0.log, replace
desc
desc age cccost wage
summarize
sum age wage hours
sum age wage hours, d
generate lnwage=ln(wage)
gen employed = (wage>0)
cmdlog close
log close
