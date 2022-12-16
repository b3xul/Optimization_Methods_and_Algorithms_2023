// Objective function
//max: min: team_speeds -> A is the min of T1, T2, T3
max: A;

// Constraints
A <= T1;
A <= T2;
A <= T3;

T1 >= 8;
T2 >= 8;
T3 >= 8;

T1 = 3.5 Y11 + 6 Y21 + 7 Y31 + 2.8 Y41 + 1.5 Y51 + 1.5 Y61 + 3 Y71 + 4 Y81 + 6.5 Y91 + 4 Y01;
T2 = 3.5 Y12 + 6 Y22 + 7 Y32 + 2.8 Y42 + 1.5 Y52 + 1.5 Y62 + 3 Y72 + 4 Y82 + 6.5 Y92 + 4 Y02;
T3 = 3.5 Y13 + 6 Y23 + 7 Y33 + 2.8 Y43 + 1.5 Y53 + 1.5 Y63 + 3 Y73 + 4 Y83 + 6.5 Y93 + 4 Y03;

Y11 + Y12 + Y13 = 1;
Y21 + Y22 + Y23 = 1;
Y31 + Y32 + Y33 = 1;
Y41 + Y42 + Y43 = 1;
Y51 + Y52 + Y53 = 1;
Y61 + Y62 + Y63 = 1;
Y71 + Y72 + Y73 = 1;
Y81 + Y82 + Y83 = 1;
Y91 + Y92 + Y93 = 1;
Y01 + Y02 + Y03 = 1;


Y11 + Y21 + Y31 + Y41 + Y51 + Y61 + Y71 + Y81 + Y91 + Y01 <= 4;
Y11 + Y21 + Y31 + Y41 + Y51 + Y61 + Y71 + Y81 + Y91 + Y01 >= 2;

Y12 + Y22 + Y32 + Y42 + Y52 + Y62 + Y72 + Y82 + Y92 + Y02 <= 4;
Y12 + Y22 + Y32 + Y42 + Y52 + Y62 + Y72 + Y82 + Y92 + Y02 >= 2;

Y13 + Y23 + Y33 + Y43 + Y53 + Y63 + Y73 + Y83 + Y93 + Y03 <= 4;
Y13 + Y23 + Y33 + Y43 + Y53 + Y63 + Y73 + Y83 + Y93 + Y03 >= 2;

// Variables
//int A, T1, T2, T3; NOT INTEGERS, THEY ARE REAL!
bin Y11, Y21, Y31, Y41, Y51, Y61, Y71, Y81, Y91, Y01;
bin Y12, Y22, Y32, Y42, Y52, Y62, Y72, Y82, Y92, Y02;
bin Y13, Y23, Y33, Y43, Y53, Y63, Y73, Y83, Y93, Y03;