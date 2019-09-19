use "C:\Users\ljiang\Desktop\ECO220\Labs\Problemset1\Data\mexico.dta" 
save mexico.dta, replace
cd /Users/ljiang/Desktop/ECO220/Labs/Problemset1
log using Analysis/jiang_problemset1.log, replace
desc
sum
sum hhsize, d
sum hhsize if hhsize==5
sum hhsize if hhsize==8
sum hhsize if hhsize==4
twoway histogram hhsize, freq
graph save Graph "C:\Users\ljiang\Desktop\ECO220\Labs\Problemset1\Analysis\hhsize.gph"
sum pcynet, d
twoway histogram pcynet, freq
graph save Graph "C:\Users\ljiang\Desktop\ECO220\Labs\Problemset1\Analysis\pcynet.gph"
log close
