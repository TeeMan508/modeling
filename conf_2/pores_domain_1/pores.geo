// Gmsh project created on Fri Apr 26 17:54:11 2024
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, 1, 0, 1.0};
//+
Point(3) = {1, 1, 0, 1.0};
//+
Point(4) = {1, 0, 0, 1.0};
//+
Point(5) = {1, 0.01, 0, 1.0};
//+
Point(6) = {1, 0.5, 0, 1.0};
//+
Point(7) = {1, 0.99, 0, 1.0};
//+
Point(8) = {0, 0.01, 0, 1.0};
//+
Point(9) = {0, 0.5, 0, 1.0};
//+
Point(10) = {0, 0.99, 0, 1.0};
//+
Line(1) = {1, 8};
//+
Line(2) = {10, 2};
//+
Line(3) = {2, 3};
//+
Line(4) = {3, 7};
//+
Line(5) = {5, 4};
//+
Line(6) = {4, 1};

//+
Circle(7) = {10, 9, 8};
//+
Circle(8) = {5, 6, 7};

//+
Curve Loop(1) = {3, 4, -8, 5, 6, 1, -7, 2};
//+
Plane Surface(1) = {1};

//+
Physical Curve(13) = {3, 6};
//+
Physical Curve(14) = {2, 7, 1};
//+
Physical Curve(15) = {4, 8, 5};
//+
Physical Surface(16) = {1};
