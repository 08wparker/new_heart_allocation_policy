use for_mlogit.dta, clear



mlogit treatment i.post [aweight = ipw]

outreg2 using reg_output, replace

margins post

margins, dydx(post)

teffects ipw (treatment) (policy age-payor_Private)

tebalance summarize
