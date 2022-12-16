// Objective function
max : 50 A + 60 B + 55 C + 80 D - 14500 YA - 10000 YB - 8000 YC - 9000 YD;

// Constraints

// if activated, company has to produce at least x units
/*
We can already be sure that A,B,C,D won't go to infinity because we have the constraint on the total amount of unit of workforce!
M = total workforce (200 000) / smallest workforce required (5) = max pieces of 1 type producible with the given workforce (40 000)
A <= 40000 YA;
B <= 40000 YB;
C <= 40000 YC;
D <= 40000 YD;
*/

1000 YA <= A;
1500 YB <= B;
3000 YC <= C;
2000 YD <= D;

// total amount of 200 000 unit of workforce
10 A + 15 B + 5 C + 14 D <= 200000;

// YA -> (YB | YC)
// YA=0 -> YB+YC = 0,1,2
// YA=1 -> YB+YC = 1,2
YA <= YB + YC;

// Variables
bin YA, YB, YC, YD;
int A, B, C, D;