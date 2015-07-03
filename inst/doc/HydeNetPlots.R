## ------------------------------------------------------------------------
library(HydeNet)
data(BlackJack, package="HydeNet")
plot(BlackJack, useHydeDefaults=FALSE)

## ------------------------------------------------------------------------
plot(BlackJack)

## ------------------------------------------------------------------------
getOption("Hyde_plotOptions")

## ------------------------------------------------------------------------
HydePlotOptions(variable=list(shape = "rect", fillcolor = "#A6DBA0"),
                determ = list(shape = "rect", fillcolor = "#E7D4E8",
                              fontcolor = "#1B7837", linecolor = "#1B7837"),
                decision = list(shape = "triangle", fillcolor = "#1B7837",
                                linecolor = "white"),
                utility = list(shape = "circle", fillcolor = "#762A83", 
                               fontcolor = "white"))
plot(BlackJack)

## ------------------------------------------------------------------------
HydePlotOptions(restorePackageDefault=TRUE)
plot(BlackJack)

## ------------------------------------------------------------------------
plot(BlackJack,
     customNodes = customNode(node_id = "hit1",
                              fillcolor = "purple", shape = "circle",
                       fontcolor = "white", height = "2",
                       style="filled"))

## ------------------------------------------------------------------------
plot(BlackJack,
     customNodes = customNode(node_id = "hit1", height = "2"))
plot(BlackJack,
     customNodes = customNode(node_id = "hit2", height = "2"))
plot(BlackJack,
     customNodes = customNode(node_id = "hit3", height = "2"))

## ------------------------------------------------------------------------
plot(BlackJack,
     customNodes = rbind(customNode(node_id = "hit1", height="2"),
                         customNode(node_id = "hit2", height="2"),
                         customNode(node_id = "hit3", height="2")))

## ------------------------------------------------------------------------
plot(BlackJack,
     customNodes = customNode(node_id = "payoff", 
                              fillcolor = "green", 
                              shape = "ellipse", 
                              height="2", 
                              width="4",
                              style="filled"),
     useHydeDefaults = FALSE)
