$fn=50;

cw=70;
cd=25;
ch=45;
cy=10;


M1 = [[cw,   0,  0,  0],
      [0,    1,  0,  0],
      [-15,  0,  1,  25]];

M2 = [[cw,  0,  0,  0],
      [0,   1,  0,  15],
      [30-ch,   0,  25,  ch-30]];


difference() {
    union() {
        cube([cw,cd,25]);
        multmatrix(M2) {
            cube([1,10,1]);
        }
        translate([0,15,0])
        cube([cw,10,15]);
        translate([0,0,ch-15])
        cube([30,cd,15]);
    }
    translate([cw-35,0,0])
    cube([20,10,ch]);
    translate([15,cd,10])
    rotate([90,0,0])
    cylinder(h=cd,d=cy);
    multmatrix(M1) {
        cube([1,15,15]);
    }
}

translate([cw/2,0,-20])
linear_extrude(height=1)
text("19");
