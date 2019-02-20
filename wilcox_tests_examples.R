
# Load data -------
dat_ <- read.csv2("", na.strings = c("", " "), dec = ".")

# load packages ----
library(coin)

# access source code -----
methods(wilcox.test)
stats:::wilcox.test.default
stats:::wilcox.test.formula
methods(pwilcox)
stats::pwilcox

# create two vectors for MMSE delta -----
delta_x <- c(-3,0,-5,2,2,5,-1,-2,-5,4,-7,3,0,-2)
delta_y <- c(-9,-6,-2,-2)




##### tests

# W test statistics; p-value asymptotic; with continuity correction
wilcox.test(delta_x, delta_y)
# W test statistics; p-value exact
wilcox.test(delta_x, delta_y, exact = T)
# W test statistics; p-value asymptotic
wilcox.test(delta_x, jitter(delta_y), exact = T)
# W test statistics; p-value asymptotic
wilcox.test(delta_x, delta_y, exact = FALSE, correct = FALSE)
# W test statistics; p-value asymptotic; equal variance
wilcox.test(delta_x, delta_y, alternative="greater")

##### tests2

# W test statistics; p-value asymptotic; with continuity correction
wilcox.test(dat$DeltaFromBL.raw ~ dat$group)
# W test statistics; p-value asymptotic
wilcox.test(dat$DeltaFromBL.raw ~ dat$group, exact = T)
# W test statistics; p-value asymptotic
wilcox.test(jitter(dat$DeltaFromBL.raw) ~ dat$group, exact = T)

# W test statistics; p-value asymptotic
wilcox.test(dat$MMSE.DeltaFromBL.raw ~ dat$group, exact = FALSE, correct = FALSE)



# Z test statistics; p-value asymptotic
wilcox_test(dat$DeltaFromBL.raw ~ dat$group, distribution = "asymptotic")
# Z test statistics; p-value approximate
wilcox_test(dat$DeltaFromBL.raw ~ dat$group, distribution = "approximate")
# Z test statistics; p-value exact
wilcox_test(dat$DeltaFromBL.raw ~ dat$group, distribution = "exact")



# Package 1: wilcox.test --------------

delta_wilcox.test <- wilcox.test(dat$DeltaFromBL.raw ~ dat$group, exact = FALSE, correct = FALSE)
delta_wilcox.test$p.value

wilcox.test(dat$MMSE.DeltaFromBL.raw ~ dat$group, exact=T)

# Package 2: wilcox_test --------------

delta_wilcox_test <- wilcox_test(dat$DeltaFromBL.raw ~ dat$group)
pvalue(delta_wilcox_test)


