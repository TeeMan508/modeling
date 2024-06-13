// Gmsh project created on Sat Jun 01 11:39:02 2024
SetFactory("OpenCASCADE");
R=0.39;
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 1, 0, 1.0};
//+
Point(3) = {1, 0, 0, 1.0};
//+
Point(4) = {1, 1, 0, 1.0};
//+
Point(5) = {0, 0, 1, 1.0};
//+
Point(6) = {0, 1, 1, 1.0};
//+
Point(7) = {1, 0, 1, 1.0};
//+
Point(8) = {1, 1, 1, 1.0};
//+
Line(1) = {6, 8};
//+
Line(2) = {8, 7};
//+
Line(3) = {7, 5};
//+
Line(4) = {5, 6};
//+
Line(5) = {8, 4};
//+
Line(6) = {4, 3};
//+
Line(7) = {3, 7};
//+
Line(8) = {6, 2};
//+
Line(9) = {2, 4};
//+
Line(10) = {5, 1};
//+
Line(11) = {1, 2};
//+
Line(12) = {1, 3};
//+
Sphere(1) = {0.5, 0.5, 0.5, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(2) = {0, 1, 0, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(3) = {0, 1, 1, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(4) = {1, 1, 0, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(5) = {1, 1, 1, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(6) = {0, 0, 0, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(7) = {0, 0, 1, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(8) = {1, 0, 0, R, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(9) = {1, 0, 1, R, -Pi/2, Pi/2, 2*Pi};
//+
Curve Loop(10) = {3, 4, 1, 2};
//+
Plane Surface(10) = {10};
//+
Curve Loop(11) = {12, 7, 3, 10};
//+
Plane Surface(11) = {11};
//+
Curve Loop(12) = {11, 9, 6, -12};
//+
Plane Surface(12) = {12};
//+
Curve Loop(13) = {8, 9, -5, -1};
//+
Plane Surface(13) = {13};
//+
Curve Loop(14) = {11, -8, -4, 10};
//+
Plane Surface(14) = {14};
//+
Curve Loop(15) = {2, -7, -6, -5};
//+
Plane Surface(15) = {15};
//+
Surface Loop(10) = {11, 12, 14, 13, 15, 10};
//+
Volume(10) = {10};
//+
BooleanDifference{ Volume{10}; Delete; }{ Volume{7}; Volume{2}; Volume{3}; Volume{6}; Volume{8}; Volume{9}; Volume{4}; Volume{5}; Volume{1}; Delete; }
//+
Field[1] = Ball;
//+
Field[1].Radius = 0.42;
//+
Field[1].Thickness = 0.01;
//+
Field[1].VIn = 0.05;
//+
Field[1].VOut = 0.5;
//+
Field[1].XCenter = 0.5;
//+
Field[1].YCenter = 0.5;
//+
Field[1].ZCenter = 0.5;
//+
Background Field = 1;
//+
Field[2] = Ball;
//+
Field[2].Radius = 0.42;
//+
Field[2].Thickness = 0.01;
//+
Field[2].VIn = 0.05;
//+
Field[2].VOut = 0.5;
//+
Background Field = 2;
//+
Field[3] = Ball;
//+
Field[3].Radius = 0.42;
//+
Field[3].Thickness = 0.01;
//+
Field[3].VIn = 0.05;
//+
Field[3].VOut = 0.5;
//+
Field[3].YCenter = 1;
//+
Background Field = 3;
//+
Field[4] = Ball;
//+
Field[4].Radius = 0.42;
//+
Field[4].Thickness = 0.01;
//+
Field[4].VIn = 0.05;
//+
Field[4].VOut = 0.5;
//+
Field[4].XCenter = 1;
//+
Background Field = 4;
//+
Field[5] = Ball;
//+
Field[5].Radius = 0.42;
//+
Field[5].Thickness = 0.01;
//+
Field[5].VIn = 0.05;
//+
Field[5].VOut = 0.5;
//+
Field[5].XCenter = 1;
//+
Field[5].YCenter = 1;
//+
Background Field = 5;
//+
Field[6] = Ball;
//+
Field[6].Radius = 0.42;
//+
Field[6].Thickness = 0.01;
//+
Field[6].VIn = 0.05;
//+
Field[6].VOut = 0.5;
//+
Field[6].XCenter = 1;
//+
Field[6].YCenter = 1;
//+
Field[6].ZCenter = 1;
//+
Background Field = 6;
//+
Field[7] = Ball;
//+
Field[7].Radius = 0.42;
//+
Field[7].Thickness = 0.01;
//+
Field[7].VIn = 0.05;
//+
Field[7].VOut = 0.5;
//+
Field[7].YCenter = 1;
//+
Field[7].ZCenter = 1;
//+
Background Field = 7;
//+
Field[8] = Ball;
//+
Field[8].Radius = 0.42;
//+
Field[8].Thickness = 0.01;
//+
Field[8].VIn = 0.05;
//+
Field[8].VOut = 0.5;
//+
Field[8].YCenter = 1;
//+
Field[8].ZCenter = 1;
//+
Background Field = 8;
//+
Field[9] = Ball;
//+
Field[9].Radius = 0.42;
//+
Field[9].Thickness = 0.01;
//+
Field[9].VIn = 0.05;
//+
Field[9].VOut = 0.5;
//+
Field[9].XCenter = 1;
//+
Field[9].YCenter = 1;
//+
Field[9].ZCenter = 1;
//+
Background Field = 9;
//+
Field[10] = Min;
//+
Field[10].FieldsList = {1, 2, 3, 4, 5, 6, 7, 8, 9};
//+
Background Field = 10;
//+
Field[8].XCenter = 1;
//+
Field[8].YCenter = 0;
//+
Field[9].XCenter = 0;
//+
Field[9].YCenter = 0;
//+
Field[9].YCenter = 1;
//+
Field[9].YCenter = 0;
//+
Field[9].ZCenter = 1;
//+
Background Field = 1;
//+
Background Field = 2;
//+
Field[2].Radius = 0.41;
//+
Field[1].Radius = 0.41;
//+
Field[3].Radius = 0.41;
//+
Field[4].Radius = 0.41;
//+
Field[5].Radius = 0.41;
//+
Field[6].Radius = 0.41;
//+
Field[7].Radius = 0.41;
//+
Field[8].Radius = 0.41;
//+
Field[9].Radius = 0.41;
//+
Background Field = 10;
//+
Background Field = 2;
//+
Background Field = 10;
//+
Background Field = 1;
//+
Background Field = 2;
