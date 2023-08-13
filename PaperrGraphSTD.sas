ODS PDF FILE = 'C:\Users\lamiae\OneDrive - Mississippi State University\Desktop\Courses\MSU\ST MS Project\SAS Files and Results\FT_STDFT_Graph.pdf' STYLE= minimal;
OPTIONS PS=55 LS=85;
DATA PLOTS;
DO X1 = -1 TO 1 BY 1;
DO X2 = -1 TO 1 BY 1;
DO X3 = -1 TO 1 BY 0.1;
DO X4 = -1 TO 1 BY 0.1;
FT = 3.708333 - 0.000833 *X1 + 0.050833 *X2 + 0.002500 * X3 -0.060833 *X4 - 0.017917 *X1*X1 - 0.014167 *X2*X2 - 0.022917 *X3*X3 - 0.028750 *X1*X2 - 0.037500 *X1*X3 + 0.046250 *X2*X3 + 0.043750 *X1*X4 - 0.021250 *X3*X4 ;
STDFT = 0.0608611111 -.0007916667* X1 +0.0002916667 *X3 +0.0053750000 * X4 + 0.0101736111 * X1*X1 -.0108125000*X3*X4;
Output; 
End;
End;
End;
End;
LABEL FT = "Flight Time" STDFT = "Std Dev Flight Time" X1 = 'Wing Area' X2 = 'Wing Ratio' X3 = 'Base Width' X4 = 'Base Length';
Run;
PROC GCONTOUR;
PLOT X3*X4 = STDFT/NLEVELS=10 GRID XTICKNUM=7 YTICKNUM=7 HMINOR=4 VMINOR=4 ;
BY X1 X2;
symbol WIDTH=5;
RUN;
PROC G3D;
PLOT X3*X4 = STDFT/GRID XTICKNUM=5 YTICKNUM=5 ZTICKNUM=9;
RUN;
PROC GCONTOUR;
PLOT X3*X4 = FT/NLEVELS=10 GRID XTICKNUM=7 YTICKNUM=7 HMINOR=4 VMINOR=4;
BY X1 X2;
RUN;
PROC G3D;
PLOT X3*X4 = FT/GRID XTICKNUM=5 YTICKNUM=5 ZTICKNUM=9;
RUN;
QUIT; 

ODS PDF CLOSE;
