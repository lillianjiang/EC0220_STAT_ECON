use "C:\Users\ljiang\Desktop\ECO220\Labs\Lab6\Data\Card Krueger.dta" 
cd  \Users\ljiang\Desktop\ECO220\Labs\Lab6
log using Analysis\jiang_lab6.log, append
save card.dta
. drop if state == 0
 gen fte1 = empft1 + (1/2)* emppt1
gen fte2 = empft2 + (1/2)* emppt2
. gen dfte = fte2 - fte1
drop if dfte == .
. sum fte1 fte2
mean fte1
mean fte2
sum dfte
mean dfte
log close
