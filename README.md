# Chebyshev Problem
Find the center and radius of the shortest or smallest circumference of a set of points with MATLAB.

## Problem to solve 📑
This is a Nonlinear Optimization problem that consists in: we are given a set of points a<sub>1</sub>,a<sub>2</sub>,...,a<sub>m</sub> &isin; &Ropf;<sup>n</sup>, and we seek to find a point x &isin; &Ropf;<sup>n</sup> , which is the center of the minimum radius ball containing the points

<img src="https://latex.codecogs.com/png.latex?\bg_white&space;\large&space;min\phantom{r}r&space;\\&space;s.a&space;\\&space;\phantom{rsa}||x-a_i||<r&space;\phantom{r},&space;\phantom{r}a_i&space;\in&space;\Re^n" title="\large min\phantom{r}r \\ s.a \\ \phantom{rsa}||x-a_i||<r \phantom{r}, \phantom{r}a_i \in \Re^n"/> 

For more information read [Smallest-circle problem](https://en.wikipedia.org/wiki/Smallest-circle_problem) and [Optimal-Separation of Points](http://kth.diva-portal.org/smash/get/diva2:558519/FULLTEXT01.pdf) 

## Input 📋
The main program is called ChebyshevProblem.m, which is the program to compile.
_You have to change matrix A to modify the set of points._

The first row corresponds to the x coordinate, while the second row corresponds to the y coordinate, that is, each column is a point.

## Output 📦
