from scipy.stats import mannwhitneyu
t = [300,300,300,300,300,300,300,300,300,300,300,300]
g = [22,300,75,271,300,18,300,300,163,300,300,300]
u, prob = mannwhitneyu(t,g)

print(prob)
