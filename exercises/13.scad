$fn=50;

cw=70;
cd=40;
ch=30;
cy=10;

difference() {
    cube([cw,cd,ch]);
    cube([cw,5,15]);
    polyhedron(
        points=[ [40,0,ch],
                 [40,cd,ch],
                 [cw,cd,ch],
                 [cw,0,ch],
                 [cw,0,15],
                 [cw,cd,15]],
        faces=[  [0,1,2],
                 [0,2,3],
                 [0,3,4],
                 [0,4,5],
                 [1,0,5],
                 [1,5,2],
                 [2,5,4],
                 [4,3,2]]);
    linear_extrude(height=ch)
    polygon([
             [25,0],
             [cw,0],
             [cw,cd-15]]);
    translate([10,15,0])
    cylinder(h=ch,d=cy);
    translate([30,30,0])
    cylinder(h=ch,d=cy);
}
translate([cw/2,0,-20])
linear_extrude(height=1)
text("13");
