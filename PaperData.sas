DATA PAPER;
INPUT REP WA WR BW BL FT STDFT;
CARDS;
9	-1	-1	-1	-1	3.67	0.052
21	1	-1	-1	-1	3.69	0.052
14	-1	1	-1	-1	3.74	0.055
4	1	1	-1	-1	3.7		0.062
2	-1	-1	1	-1	3.72	0.052
19	1	-1	1	-1	3.55	0.065
22	-1	1	1	-1	3.97	0.052
25	1	1	1	-1	3.77	0.098
27	-1	-1	-1	1	3.5		0.079
13	1	-1	-1	1	3.73	0.072
20	-1	1	-1	1	3.58	0.083
6	1	1	-1	1	3.63	0.132
12	-1	-1	1	1	3.44	0.058
17	1	-1	1	1	3.55	0.049
26	-1	1	1	1	3.7		0.081
1	1	1	1	1	3.62	0.051
8	-2	0	0	0	3.61	0.129
15	2	0	0	0	3.64	0.085
7	0	-2	0	0	3.55	0.1
5	0	2	0	0	3.73	0.063
29	0	0	-2	0	3.61	0.051
28	0	0	2	0	3.6		0.095
16	0	0	0	-2	3.8		0.049
18	0	0	0	2	3.6		0.055
24	0	0	0	0	3.77	0.032
10	0	0	0	0	3.75	0.055
23	0	0	0	0	3.7		0.072
11	0	0	0	0	3.68	0.055
3	0	0	0	0	3.69	0.078
30	0	0	0	0	3.66	0.058
RUN;
PROC PRINT;
RUN;