// objective function
//min: max: A1,a2..A109;
min: A10+3;

// precedence constraints
A2 >= A1 + 10;
A3 >= A1 + 10;
A3 >= A2 + 20;
A4 >= A1 + 10;
A5 >= A2 + 20;
A6 >= A5 + 7;
A6 >= A7 + 10;
A7 >= A3 + 18;
A7 >= A4 + 25;
A8 >= A4 + 25;
A9 >= A7 + 10;
A10 >= A6 + 20;
A10 >= A8 + 5;
A10 >= A9 + 12;

// release and deadline constraints
15 <= A2;
A2 + 20 <= 60;
A3 + 18 <= 55;
A4 + 25 <= 55;
5 <= A5;
A5 + 7 <= 63;
28 <= A7;
A10 + 3 <= 100;

// variables
int A1, A2, A3, A4, A5, A6, A7, A8, A9, A10;