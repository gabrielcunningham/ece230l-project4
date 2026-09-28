# Lab 04 - SOP/POS and KMaps

- Group 6: Gabe Cunningham & Everett Wilcox

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab, we got the opportunity to practice optimization of a logic equation.
Rather than relying on boolean algebra like the previous labs, we applied a new
concept: KMaps. With the KMaps, we are able to more quickly find a simplified
equation representing the function expressed with the truth table. We used both
the Sum-of-Product and Product-of-Sum approaches to determining these equations,
which both provided a more efficient starting point for simplification than the
'naive' approach that we compared against as a baseline.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
The reason why the 1s and 0s can go across the edges of the KMap and loop back
around is because only one variable is changing when that move is made. How we
have been working with KMaps has had us with the order for variables A, B as:
00, 01, 11, 10. That change from 10 to 00 only has one value (A) changing from
$A \to \bar{A}$. The order of values in a KMap doesn't particularly matter as 
long as each direct neighboring square only has one variable change happen per
cell moved.

### Why are the names Sum of Products and Products of Sums?
The names are Sum of Products and Products of Sum because of how the boolean AND
and OR operators behave similarly to addition and multiplication. An example of
Sum of Products is $\sum{m(0, 3) = \bar{A}\bar{B} + AB}$ where the OR ($+$)
operator is used to describe a list of possible combinations. An example of
Products of Sums is $\Pi{M(1, 2) = (A+\bar{B}) \centerdot (\bar{A}+B)}$. In this
example, each case is negated and combined using AND to describe which cases are
possible by describing what is not possible.

### Open the test.v file – how are we able to check that the signals match using XOR?
We can check that the signals match with XOR because if the results are the same
which is the intended case for this assignment, XOR will return 0 if both inputs
are 0 or 1, but if there is a difference between the two outputs, XOR will 
return 1. This can be visually described using the Truth Table for XOR:

| A | B | XOR |
|---|---|---|
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |