
log using analysis/jiang_lab9.log, replace

describe v090

label list v090

sum v090

tab v090

gen sgc = 0

drop sgc

 gen sgc = 0

drop sgc

gen sgc = 0

replace sgc =1 if v090 < 2

replace sgc =. if v090 > 3

drop sgc

gen sgc = 0

replace sgc =1 if v090 < 2

replace sgc =. if v090 > 3

tab sgc

tab v144

tab sgc v144

proportion sgc,over(v144) level(99)

sum v090

prtest sgc, by(v144) level(99)

label list v138

gen ptc = 0

replace ptc = 1 if v138<3

replace ptc = . if v138 ==9

tab ptc

replace ptc =. if v138>5

tab ptc

tab ptc v144

label list v144

proportion ptc, over(v144) level(99.9)

prtest ptc, by(v144) level(99)

