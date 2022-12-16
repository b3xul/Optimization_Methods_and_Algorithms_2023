/* If I could have 0,1,2 or 3 extra hours, I would a more complex problem
    // objective function
    max: 3 YJ1 + YJ2 + 0.8YJ3 + 2.0YJ4 + 4.0 YJ5 + 1.0YJ6 + 1.3YJ7 + 1.7YJ8 - 400 E1 - 400 E2 - 400 E3 - 400 E4 - 400 E5 - 400 E6 - 400 E7 - 400 E8;
    // extra hours constraints
    M = 3;
    YE1+YE2+YE3 <= 2;
    E1 <= M YE1;
    E2 <= M YE2;
    E3 <= M YE3;
*/

/* I can have 0 or 3 extra hours */
// Objective function
max: 3 Y11 + 3 Y12 + 3 Y13 + Y21 + Y22 + Y23 + 0.8 Y31 + 0.8 Y32 + 0.8 Y33 + 2 Y41 + 2 Y42 + 2 Y43 + 4 Y51 + 4 Y52 + 4 Y53 + Y61 + Y62 + Y63 + 1.3 Y71 + 1.3 Y72 + 1.3Y73 + 1.7 Y81 + 1.7 Y82 + 1.7 Y83 - 0.4 YE1 - 0.4 YE2 - 0.4 YE3;
// TOT=14.8 -> It was decided to do all jobs, using machines 1 and 2 for extra hours, so that they were able to complete job 2 (7h) +job 3 (3h)+job 5(4h) and job 4 (5h) + job 6 (3h) + job7 (6h) 

// Each job can be assigned by 1 of the 3 machines
Y11 + Y12 + Y13 <= 1;
Y21 + Y22 + Y23 <= 1;
Y31 + Y32 + Y33 <= 1;
Y41 + Y42 + Y43 <= 1;
Y51 + Y52 + Y53 <= 1;
Y61 + Y62 + Y63 <= 1;
Y71 + Y72 + Y73 <= 1;
Y81 + Y82 + Y83 <= 1;

// Time occupied by the machine 1,2,3 must be <= 11h
6Y11 + 7Y21 + 3Y31 + 5Y41 + 4Y51 + 3Y61 + 6Y71 + 5Y81 <= 11 + 3 YE1;
6Y12 + 7Y22 + 3Y32 + 5Y42 + 4Y52 + 3Y62 + 6Y72 + 5Y82 <= 11 + 3 YE2;
6Y13 + 7Y23 + 3Y33 + 5Y43 + 4Y53 + 3Y63 + 6Y73 + 5Y83 <= 11 + 3 YE3;

// extra hours constraints: only 2 machines can activate extra hours
YE1+YE2+YE3 <= 2;

// variables
bin Y11, Y12, Y13, Y21, Y22, Y23, Y31, Y32, Y33, Y41, Y42, Y43, Y51, Y52, Y53, Y61, Y62, Y63, Y71, Y72, Y73, Y81, Y82, Y83;
bin YE1, YE2, YE3;