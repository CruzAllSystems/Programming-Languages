affair(mrBoddy, msGreen).
married(professorPlum, msGreen).
rich(mrBoddy).
greedy(colonelMustard).
affair(msScarlett, mrBoddy).

hates(X, Y):- married(X, Z), affair(Y, Z).
murder(X, Y):- greedy(X), rich(Y).
murder(X, Y):- hates(X,Y).
