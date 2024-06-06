// Gmsh project created on Sat Jun 01 11:39:02 2024
SetFactory("OpenCASCADE");
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
Sphere(1) = {0.5, 0.5, 0.5, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(2) = {0, 1, 0, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(3) = {0, 1, 1, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(4) = {1, 1, 0, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(5) = {1, 1, 1, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(6) = {0, 0, 0, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(7) = {0, 0, 1, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(8) = {1, 0, 0, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
//+
Sphere(9) = {1, 0, 1, 0.4163325154442203, -Pi/2, Pi/2, 2*Pi};
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
