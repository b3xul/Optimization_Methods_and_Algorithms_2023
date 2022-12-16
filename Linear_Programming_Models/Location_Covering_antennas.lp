// Objective function: Maximize the amount of zones covered
max: YC1 + YC2 + YC3 + YC4 + YC5 + YC6;

// Constraints
// Each zone is covered if at least one of the antennas placed there has rate >= 18
//YC1 = YC OR TE = YC + YE > 0
YC1 = YC + YE; // 1+1 = 1 if variables are binary
YC2 = YA;
YC3 = YB;
YC4 = YA + YB;
YC5 = YC + YE;
YC6 = YC + YD + YE;

/* only needed if I use integer variables
YC1 <= 1;
YC2 <= 1;
YC3 <= 1;
YC4 <= 1;
YC5 <= 1;
YC6 <= 1;
*/

// Total cost < 400 000
150000 YA + 135000 YB + 140000 YC + 120000 YD + 130000 YE <= 400000;

// Antenna E can be installed only if Antenna D is installed
YE <= YD; 

// Variables
bin YC1, YC2, YC3, YC4, YC5, YC6;
bin YA, YB, YC, YD, YE;
