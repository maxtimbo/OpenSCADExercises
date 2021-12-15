use <lib.scad>;
include <default_cube.scad>;
$fn=100;

module one() {
    difference() {
        cube([70,40,30]);
        translate([15,0,15])
        cube([45,40,15]);
        translate([40,0,0])
        cube([30,15,30]);
        translate([25,10,0])
        cylinder(h=30, d=10);
        translate([40,30,0])
        cylinder(h=30, d=10);
    }
}

module two() {
    cw=70;
    cd=35;
    ch=30;
    
    difference() {
        cube([cw,cd,ch]);
        translate([15,10,ch-10])
        cube([cw-15,15,10]);
        translate([25,0,25])
        cube([cw-50,cd,5]);
        for(i=[0:cw-15:cw-15]) {
            translate([i,0,10])
            cube([15,35,30]);
        }
        translate([cw/2,cd,10])
        rotate([90,0,0])
        cylinder(h=cd,d=10);
    }
}

module three() {
    cw=70;
    cd=35;
    ch=30;
    
    union() {
        difference() {
            cube([cw-5,cd,ch]);
            translate([cw/2,cd/2,0])
            cylinder(h=15, d=15);
            translate([cw/2,10,0])
            cube([cw/2,15,15]);
            translate([15,0,15])
            cube([cw-15,cd,ch-15]);
            translate([0,0,ch-10])
            cube([15,15,10]);
        }
        translate([cw-5,5, 0])
        cylinder(h=15, r=5);
        translate([cw-5,5,0])
        cube([5,5,15]);
        translate([cw-5,cd-5, 0])
        cylinder(h=15, r=5);
        translate([cw-5,cd-10,0])
        cube([5,5,15]);
    }
}

module four() {
    cw=70;
    cd=30;
    ch=35;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,10])
        cube([cw,20,15]);
        translate([cw-40,0,10])
        cube([cw,cd,15]);
        translate([20,0,20])
        cube([cw-20,cd,15]);
        translate([10,10,25])
        cylinder(h=cy,d=cy);
        translate([40,15,0])
        cylinder(h=cy,d=cy);
        translate([cw-10,15,0])
        cylinder(h=cy,d=cy);
    }
}

module five() {
    cw=70;
    cd=30;
    ch=35;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        cube([20,cd,ch-10]);
        translate([0,10,0])
        cube([cw,10,5]);
        translate([cw-25,0,15])
        cube([25,cd,20]);
        translate([30,0,15])
        cube([20,15,ch-15]);
        translate([10,cd/2,ch-cy])
        cylinder(h=cy,d=cy);
    }
}

module six() {
    cw=75;
    cd=35;
    ch=30;
    
    difference() {
        cube([cw,cd,ch]);
        translate([10,0,0])
        cube([20,cd-10,ch]);
        translate([40,0,10])
        cube([cw-20*2,cd,ch-10]);
        translate([cw-15,cd/2,0])
        cylinder(h=10,d=15);
        translate([0,10,20])
        rotate([0,90,0])
        cylinder(h=40,d=10);
    }
}

module seven() {
    cw=70;
    cd=40;
    ch=30;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([cw-20,0,0])
        cube([20,30,ch]);
        translate([0,0,10])
        cube([cw-30,cd,ch-10]);
        cube([20,10,10]);
        translate([15,25,0])
        cylinder(h=cy,d=cy);
        translate([40,15,ch-10])
        rotate([0,90,0])
        cylinder(h=cy,d=cy);
    }
}

module eight() {
    cw=70;
    cd=30;
    ch=40;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,10])
        cube([cw,10,ch-10]);
        translate([0,20,0])
        cube([cw,10,ch-10]);
        translate([40,0,20])
        cube([30,cd,20]);
        translate([10,cd-5,ch-10])
        cube([20,5,10]);
        translate([20,20,20])
        rotate([90,0,0])
        cylinder(h=cy,d=cy);
    }
}

module nine() {
    cw=70;
    cd=35;
    ch=30;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,15])
        cube([cw,20,15]);
        translate([0,cd,0])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([[ 70,0  ],[ 35,ch ],[ cw,ch  ]]);
        translate([15,10,0])
        cylinder(h=15,d=cy);
        translate([40,10,0])
        cylinder(h=15,d=cy);
    }
}

module ten() {
    cw=80;
    cd=30;
    ch=35;
    cy=10;
    
    union() {
        difference() {
            translate([ 0,30,0 ])
            rotate([90,0,0])
            linear_extrude(height=cd)
            polygon([[20,0],[60,0],[40,35]]);
            translate([cw/2-15,cd/2-5,ch-10])
            cube([30,10,10]);
        }
        
        translate([0,5,0])
        difference() {
            cube([cw,cd-10,15]);
            translate([10,10,0])
            cylinder(h=20,d=10);
            translate([70,10,0])
            cylinder(h=20,d=10);
        }
    }
}

module eleven() {
    cw=70;
    cd=40;
    ch=30;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        cube([30,cd,5]);
        translate([0,20,0])
        cube([cw,10,5]);
        translate([cw-20,0,0])
        cube([20,10,ch]);
        translate([0,cd,10])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([ [70,0],[70,ch-10],[cw-40,ch-10] ]);
        translate([10,10,0])
        cylinder(h=ch,d=10);
        translate([20,cd-10,0])
        cylinder(h=ch,d=10);
    
    }
}

module twelve() {
    cw=70;
    cd=40;
    ch=30;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,15,ch-5])
        cube([cw,15,5]);
        linear_extrude(height=ch)
        polygon([[45,0],[70,0],[70,20]]);
        translate([0,cd,10])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([[70,0],[cw,ch-10],[30,ch-10]]);
        translate([15,cd,15])
        rotate([90,0,0])
        cylinder(h=cd,d=10);
    }
}

module thirteen() {
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
}

module fourteen() {
    cw=70;
    cd=30;
    ch=40;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,cd-5,0])
        cube([cw,5,20]);
        translate([10,cd,ch-10])
        rotate([90,0,0])
        cylinder(h=cd,d=cy);
        translate([cw-10,cd,10])
        rotate([90,0,0])
        cylinder(h=cd,d=cy);
        polyhedron(
            points=[ [10,0,0],      //0
                     [10,10,0],     //1
                     [cw-30,10,0],  //2
                     [cw-30,0,0],   //3
                     [30,0,ch],     //4
                     [30,10,ch],    //5
                     [cw-10,10,ch], //6
                     [cw-10,0,ch]   //7
                                ],
            faces=[  [1,0,2],
                     [2,0,3],
                     [4,0,5],
                     [0,1,5],
                     [4,6,7],
                     [6,2,7],
                     [3,4,7],
                     [0,4,3],
                     [4,5,6],
                     [5,2,6],
                     [2,5,1],
                     [2,3,7]
                            ]);
        polyhedron(
            points=[ [50,0,ch],     //0
                     [cw,0,ch],     //1
                     [cw,0,25],     //2
                     [50,cd,ch],    //3
                     [cw,cd,ch],    //4
                     [cw,cd,25] ],  //5
            faces=[  [0,1,2],
                     [1,4,2],
                     [2,4,5],
                     [3,0,5],
                     [2,5,0],
                     [1,0,3],
                     [1,3,4],
                     [4,3,5]]);
    }
}

module fifteen() {
    cw=70;
    cd=35;
    ch=35;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,10])
        cube([30,cd-10,ch-10]);
        translate([(cw/2)+5,0,10])
        cube([30,cd-10,ch-10]);
        rotate([90,0,90])
        linear_extrude(height=cw)
        polygon([[0,10],
                 [0,ch],
                 [cd-10,ch]]);
        translate([cw,0,0])
        mirror([1,0,0])
        translate([cw-15,cd,ch-15])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([[0,15],
                 [15,0],
                 [15,15]]);
        translate([cw-15,cd,ch-15])
        rotate([90,0,0])
        linear_extrude(height=cd)
        polygon([[0,15],
                 [15,0],
                 [15,15]]);
        translate([15,10,0])
        cylinder(h=cy,d=cy);
        translate([cw-15,10,0])
        cylinder(h=cy,d=cy);
    }
}

module sixteen() {
    cw=80;
    cd=35;
    ch=30;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([10,10,10])
        cube([15,cd-10,ch-10]);
        translate([25,0,10])
        cube([45,cd,ch-10]);
        translate([0,0,30])
        rotate([0,90,0])
        linear_extrude(height=cw)
        polygon([[0,0],[10,0],[0,20]]);
        translate([0,cd-10,ch-10])
        rotate([0,90,0])
        cylinder(h=cw,d=cy);
        translate([45,15.0])
        cylinder(h=10,d=15);
    }
}

module seventeen() {
    cw=80;
    cd=35;
    ch=35;
    cy=10;
    zhh=25;
    zhl=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([5,0,0])
        cube([25,cd,5]);
        translate([35,0,0])
        cube([15,10,ch]);
        translate([35/2,35/2,0])
        cylinder(h=ch,d=15);
        translate([cw-10,10,ch-10])
        rotate([0,90,0])
        cylinder(h=10,d=10);
        polyhedron(
            points=[ [35,0,zhl],     //0
                     [35,0,ch],     //1
                     [70,0,zhl],     //2
                     [70,0,ch],     //3
                     [70,cd,zhh],    //4
                     [70,cd,ch],    //5
                     [35,cd,ch],    //6
                     [35,cd,zhh]     //7
                     ],
            faces=[  [0,1,2],
                     [3,2,1],
                     [2,3,4],
                     [3,5,4],
                     [7,1,0],
                     [7,6,1],
                     [5,3,1],
                     [6,5,1],
                     [4,5,6],
                     [7,4,6],
                     [0,2,7],
                     [2,4,7]
                     ]);
    }
}

module eighteen() {
    cw=70;
    cd=35;
    ch=35;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([10,0,0])
        cube([cw-20,cd-15,ch]);
        translate([0,0,ch])
        rotate([0,90,0])
        linear_extrude(height=10)
        polygon([ [10,0],[0,0],[0,10] ]);
        translate([cw,cd,ch])
        rotate([90,180,0])
        linear_extrude(height=cd)
        polygon([ [40,0],[0,0],[0,20] ]);
        translate([25,cd,25])
        rotate([90,0,0])
        cylinder(h=15,d=10);
        translate([45,cd,10])
        rotate([90,0,0])
        cylinder(h=15,d=10);
    }
}

module nineteen() {
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
}

module twenty() {
    cw=70;
    cd=35;
    ch=35;
    cy=10;
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,15])
        cube([cw,20,ch-15]);
        translate([0,cd-5,0])
        cube([cw,5,ch-10]);
        polyhedron(
           points=[[cw,10,10],  //0
                   [cw,cd,10],  //1
                   [cw,cd,ch],  //2
                   [cw,10,ch],  //3
                   [20,10,ch],  //4
                   [20,cd,ch]   //5
                   ],
            faces=[[3,2,0],
                   [0,2,1],
                   [5,4,0],
                   [5,0,1],
                   [4,2,3],
                   [4,5,2],
                   [4,3,0],
                   [1,2,5]
                   ]);
        translate([40,10,0])
        cylinder(h=15,d=cy);
        translate([15,10,0])
        cylinder(h=15,d=cy);
    }
}

module twentyone() {
    cw=70;
    cd=40;
    c2h=30;
    ch=35;
    roof1h=ch-10;
    
    union() {
        difference() {
            cube([40, cd, ch]);
            translate([30,0,1])
            cube([10, cd, ch-1]);
            wedge([0,15],[cd,0],[ch,roof1h]);
            translate([15*2,0,0])
            mirror([1,0,0])
            wedge([0,15],[cd,0],[ch,roof1h]);
        }
        
        translate([70,10,0])
        rotate([0,0,90])
        difference() {
            cube([30,50,c2h]);
            wedge([0,15],[50,0],[c2h,c2h-10]);
            translate([15*2,0,0])
            mirror([1,0,0])
            wedge([0,15],[50,0],[c2h,c2h-10]);
        }
        translate([cw-(5/2),20,0])
        cube([5,10,ch]);
    }
}   

module twentytwo() {
    cd=40;
    ch=30;
    M = [[cw,15,15,10],
         [0,cd-10,0,0],
         [0,0,ch-10,10]];
    
    difference() {
        cube([cw,cd,ch]);
        translate([0,0,ch+10])
        mirror([0,0,1])
        multmatrix(M) {
            cube([1,1,1]);
        }
        translate([10, cd-15,0])
        cylinder(h=ch,d=10);
        translate([cw-15,15,0])
        cylinder(h=10,d=10);
    }
}

module twentythree() {
    ccw=cw/2;
    ch=35;
    cd=30;
    
    module side() {
        difference() {
            cube([ccw,cd,ch]);
            translate([0,cd-10,20])
            cube([ccw,10,ch-20]);
            translate([10,cd,10])
            rotate([90,0,0])
            cylinder(h=cd,d=10);
            polyhedron(
             points=[[10,0,ch],         //0
                     [ccw,0,10],        //1
                     [ccw,cd-10,ch-10], //2
                     [25,cd-10,ch],     //3
                     [ccw,cd-10,ch],    //4
                     [ccw,0,ch]         //5
                     ],
              faces=[[0,1,2],
                     [1,0,5],
                     [2,3,0],
                     [3,2,4],
                     [1,5,2],
                     [5,4,2],
                     [5,3,4],
                     [3,5,0]
                     ]);
        }
    }
    
    union () {
        translate([ccw*2,0,0])
        mirror([1,0,0])
        side();
        side();
    }
}

module twentyfour() {
    cw=75;
    cd=40;
    ch=25;
    
    module funky_slope() {
        polyhedron(
           points=[[cw-10,0,0],     //0
                   [cw,0,0],        //1
                   [cw,10,0],       //2
                   [cw,0,ch],       //3
                   [cw,cd/2,10],    //4
                   [cw,cd/2,ch],    //5
                   [cw-15,cd/2,ch], //6
                   [cw-30,0,ch]     //7
                   ],
            faces=[[0,1,2],
                   [3,1,0],
                   [3,2,1],
                   [2,3,4],
                   [5,4,3],
                   [4,5,6],
                   [7,6,5],
                   [5,3,7],
                   [3,0,7],
                   [4,6,7],
                   [2,4,7],
                   [0,2,7]
                   ]);
    }
    
    module side() {
        difference () {
            cube([cw,cd/2,ch]);
            translate([10,0,ch-5])
            rotate([0,0,90])
            wedge([0,10],[0,10],[5,0]);
            funky_slope();
        }
    }
    
    difference() {
        union() {
            side();
            translate([0,cd,0])
            mirror([0,1,0])
            side();
        }
        translate([25,cd/2,0])
        cylinder(h=ch, d=10);
        translate([cw-30,cd/2,0])
        cylinder(h=ch, d=10);
        translate([25,(cd/2)-5,0])
        cube([(cw-30)-25,10,ch]);
    }
}


n=70;

translate([0,0,300]){
    one();
    fname("1", n);
}
translate([100,0,300]){
    two();
    fname("2", n);
}
translate([200,0,300]) {
    three();
    fname("3", n);
}
translate([300,0,300]) {
    four();
    fname("4", n);
}
translate([0,0,200]) {
    five();
    fname("5", n);
}
translate([100,0,200]) {
    six();
    fname("6", n);
}
translate([200,0,200]) {
    seven();
    fname("7",n);
}
translate([300,0,200]) {
    eight();
    fname("8",n);
}
translate([0,0,100]) {
    nine();
    fname("9",n);
}
translate([100,0,100]) {
    ten();
    fname("10",n);
}
translate([200,0,100]) {
    eleven();
    fname("11",n);
}
translate([300,0,100]) {
    twelve();
    fname("12",n);
}
translate([0,0,0]) {
    thirteen();
    fname("13",n);
}
translate([100,0,0]) {
    fourteen();
    fname("14",n);
}
translate([200,0,0]) {
    fifteen();
    fname("15",n);
}
translate([300,0,0]) {
    sixteen();
    fname("16",n);
}
translate([0,0,-100]) {
    seventeen();
    fname("17",n);
}
translate([100,0,-100]) {
    eighteen();
    fname("18",n);
}
translate([200,0,-100]) {
    nineteen();
    fname("19",n);
}
translate([300,0,-100]) {
    twenty();
    fname("20",n);
}
translate([0,0,-200]) {
    twentyone();
    fname("21",n);
}
translate([100,0,-200]) {
    twentytwo();
    fname("22",n);
}
translate([200,0,-200]) {
    twentythree();
    fname("23",n);
}
translate([300,0,-200]) {
    twentyfour();
    fname("24",n);
}
