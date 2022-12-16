// Objective function
min : 9 A1 + 6 A2 + 5 A3 + 7 B1 + 4 B2 + 9 B3 + 4 C1 + 6 C2 + 3 C3 + 50 T + 65 Te;

// Constraints

// A construction company has to move all its materials from three completed construction sites (A,B and C) to three new construction sites (1,2 and 3)
// In the old construction sites there are 7000, 6000 and 4000 units of material
A1 + A2 + A3 = 7000;
B1 + B2 + B3 = 6000;
C1 + C2 + C3 = 4000;

// The new sites require 8000, 5000 and 4000 units
A1 + B1 + C1 = 8000;
A2 + B2 + C2 = 5000;
A3 + B3 + C3 = 4000;

// The cargo capacity of each truck is 10000 units.
/* Soluzione 1: Per ogni "tratta" due variabili binarie: YA1 se uso un truck da A ad 1, YA1e se ne uso uno extra
min : 9 A1 + 6 A2 + 5 A3 + 7 B1 + 4 B2 + 9 B3 + 4 C1 + 6 C2 + 3 C3 + 50 T + 65 Te;
90265.00000000
min : 9 A1 + 6 A2 + 5 A3 + 7 B1 + 4 B2 + 9 B3 + 4 C1 + 6 C2 + 3 C3 + 50 T + 45 Te; -> Still takes the 4 T trucks first and then the first Te truck!
90245.00000000
*/

A1 <= 10000 YA1 + 10000 YA1e;
A2 <= 10000 YA2 + 10000 YA2e;
A3 <= 10000 YA3 + 10000 YA3e;
B1 <= 10000 YB1 + 10000 YB1e;
B2 <= 10000 YB2 + 10000 YB2e;
B3 <= 10000 YB3 + 10000 YB3e;
C1 <= 10000 YC1 + 10000 YC1e;
C2 <= 10000 YC2 + 10000 YC2e;
C3 <= 10000 YC3 + 10000 YC3e;

// there are 4 trucks available; each used truck induces a fixed cost of 50 Euro;
T = YA1 + YA2 + YA3 + YB1 + YB2 + YB3 + YC1 + YC2 + YC3;
T <= 4;

// it is possible to rent additional truck at the cost of 65 Euro;
Te = YA1e + YA2e + YA3e + YB1e + YB2e + YB3e + YC1e + YC2e + YC3e;

// Il problema che poni però ha senso, per esempio, se invece di avere costi extra (noleggio dei truck che non sono miei quindi costano di più) ho una sorta di "sconto quantità" (i truck li noleggio tutti, ma se ne prendo di più il prezzo unitario cala) Te <= 3 T - 9; sarebbe Te <= 10*(T-3) -> in questo modo se T è <= 3 allora Te è vincolato a 0. se T = 4 allora Te si "libera"
Te <= 3 T - 9;

// at construction site 2 can be shipped materials either from A or B (exclusive or)
YA2 + YB2 <= 1;
YA2 + YB2e <= 1;
YA2e + YB2 <= 1;
YA2e + YB2e <= 1;

/* Soluzione 2: In modo più semplice potresti usare solo una variabile binaria per ogni tratta e poi inserire un vincolo che il totale T dei truck attivati sia <= 4+E, con E intero = numero di truck extra

Il costo sarà 50*T + 15*E
90265.00000000


A1 <= 10000 YA1;
A2 <= 10000 YA2;
A3 <= 10000 YA3;
B1 <= 10000 YB1;
B2 <= 10000 YB2;
B3 <= 10000 YB3;
C1 <= 10000 YC1;
C2 <= 10000 YC2;
C3 <= 10000 YC3;

T = YA1 + YA2 + YA3 + YB1 + YB2 + YB3 + YC1 + YC2 + YC3;
T <= 4 + E;

// at construction site 2 can be shipped materials either from A or B (exclusive or)
YA2 + YB2 <= 1;
*/

// Variables
int A1, A2, A3, B1, B2, B3, C1, C2, C3, T, Te, E;
bin YA1, YA2, YA3, YB1, YB2, YB3, YC1, YC2, YC3;
bin YA1e, YA2e, YA3e, YB1e, YB2e, YB3e, YC1e, YC2e, YC3e;