################################################
# Exercise 4.5 - 22th november 2015
#
# Davide Pedranz (362504)
# Jakub Amanowicz (362594)
# Hongmei Liang (292520)
################################################

# load needed libraries
library("arulesViz")
data("Groceries")

# a -> mine frequent itemsets
frequent_itemsets <- sort(apriori(Groceries, parameter = list(support = 0.05, target="frequent itemsets")), by="support")
inspect(frequent_itemsets)

# b -> strong association rules
rules <- sort(apriori(Groceries, parameter=list(support=0.004, confidence=0.7, minlen = 2, target="rules")), by="support")
inspect(rules)

# c -> scatter plot of association rules
plot(rules, measure=c("support", "confidence"), shading="lift")
