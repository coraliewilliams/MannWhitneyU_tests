# MannWhitneyU_tests

### Comparisons of Mann-Whitney U tests outputs across different statistical packages. 

Mann-Whitney U test is the nonparametric equivalent of Student’s t test to compare two groups of continuous observations that are not normally distributed. Mann-Whitney U test is described in the literature also as Wilcoxon-Mann-Whitney (WMW) or Wilcoxon rank-sum test. A common misconception is that Mann-Whitney U test does not test for equality of group medians but rather tests for equality of group mean ranks.

There are three factors that can vary when implementing the Mann-Whitney U test and it’s significance [1]:

#### 1) Large-sample (asymptotic/normal) approximation:
There are two options to calculate the significance values:
By exact permutation: preferred when sample sizes are small. When there are no ties the null distribution of Wilcoxon rank-sum statistic uses the total number of observations in both samples
Large sample (asymptotic/normal) approximation: described for sample sizes bigger than 10.

#### 2) Continuity correction:
When normal approximation is used this correction accounts for the discrete distribution of the Mann-Whitney U statistic (and not continuous as the normal distribution). 

#### 3) Ties and correction for ties:
Observations having equal values are assigned the mean rank across the tie. When a tie is found in the same observation group no correction is needed. When a tie is within the two observation groups the asymptotic/normal approximation is too conservative. As such the correction adjusts the z statistics and renders less conservation (smaller) p-values. 



*[1] Ludbrook, J., and Dudley, H. (1998), "Why Permutation Tests are Superior to t and F Tests in Biomedical Research," The American Statistician, 52, 127-132.*

*[2] Wilcoxon, F. (1945), "Individual Comparison by Ranking Methods," Biometrics, 1, 80-83.*

*[3] R. Bergmann, J. Ludbrook, and W. P. J. M. Spooren (2000), “Different Outcomes of the Wilcoxon—Mann—Whitney Test from Different Statistics Packages,” Am. Stat., vol. 54, no. 1, pp. 72–77, Feb. 2000.*

*[4] Lehmann, E. L. (1998), Nonparametrics: Statistical Methods Based on Ranks (revised 1st ed.), Upper Saddle River, NJ: Prentice Hall.*

*[5] Mann, H. B., and Whitney, D. R. (1947), "On a Test of Whether One of Two Random Variables is Stochastically Larger than the Other," Annals of Mathematical Statististics, 18, 50-60.*

