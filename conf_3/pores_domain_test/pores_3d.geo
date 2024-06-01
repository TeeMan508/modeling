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
Sphere(1) = {0.5, 0.5, 1, 0.25, -Pi/2, 0, 2*Pi};
//+
Sphere(2) = {0.5, 0.5, 0, 0.25, 0, Pi/2, 2*Pi};

//+
Curve Loop(5) = {12, -6, -9, -11};
//+
Curve Loop(6) = {18};
//+
Plane Surface(5) = {5, 6};
//+
Curve Loop(7) = {3, 4, 1, 2};
//+
Curve Loop(8) = {13};
//+
Plane Surface(6) = {7, 8};
//+
Curve Loop(9) = {8, -11, -10, 4};
//+
Plane Surface(7) = {9};
//+
Curve Loop(10) = {10, 12, 7, 3};
//+
Plane Surface(8) = {10};
//+
Curve Loop(11) = {7, -2, 5, 6};
//+
Plane Surface(9) = {11};
//+
Curve Loop(12) = {5, -9, -8, 1};
//+
Plane Surface(10) = {12};
//+
Curve Loop(13) = {1, 2, 3, 4};

//+
Surface Loop(3) = {9, 8, 7, 10, 5, 6, 3, 1};
//+
Volume(3) = {3};
//+
Recursive Delete {
  Volume{1}; Volume{2}; 
}
