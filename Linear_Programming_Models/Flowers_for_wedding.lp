// objective function
min: 2 Rs + 3 Rm + 4 Rl + 1.5 Ds + 2 Dm +2.5 Dl + 1.5Gs + 2.5 Gm + 3 Gl + 2.5Ls;
// constraints
Ls<=250;

1000 <= Rs+Rm+Rl+Ds+Dm+Dl+Gs+Gm+Gl+Ls <= 1300;

// Number of daisies should not exceed that of roses and gerania
Ds+Dm+Dl<=Rs+Rm+Rl;
Ds+Dm+Dl<=Gs+Gm+Gl;

Rs+Rm+Rl=2 Ls;

Rs+Rm+Rl>=200;
Ds+Dm+Dl>=200;
Gs+Gm+Gl>=200;

Ls>=100;

Rs+Ds+Gs+Ls=Rm+Dm+Gm;
Rm+Dm+Gm=Rl+Dl+Gl;

// variables
int Rs, Rm, Rl, Ds, Dm, Dl, Gs, Gm, Gl, Ls;