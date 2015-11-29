/* 
 * 3D Printable Hex Chain
 *
 * Copyright (C) 2015, Uri Shaked.
 * License: MIT
 */

module rod(r) {
    translate([r-1.3,0,0.8]) {
        rotate([0,45,0])
        cylinder(h=6.15, $fn=60);
        
        translate([-0.75,-1,0])
        cube([2.6,2,1]);
    
        translate([4.12,0,3.6])
        cylinder(h=2.2,r1=0.9,r=2, $fn=60);
    }
}

module loop(r) {
    translate([r,0,4])
    rotate([120,0,90])
    union() {
        translate([-2,-3.45,0])
        cube([4,1.2,2]);
        difference() {
            $fn=20;
            cylinder(r=3,h=2);
            cylinder(r=2,h=2);
        }
    }
}

module unit() {
    r=8;
    
    linear_extrude(1)
        circle(10, $fn=6);

    rotate([0,0,30])
    rod(r);
    
    rotate([0,0,90])
    loop(r);

    rotate([0,0,150])
    rod(r);

    rotate([0,0,210])
    loop(r);

    rotate([0,0,270])
    rod(r);

    rotate([0,0,330])
    loop(r);
}

union() {
    unit();
   
    translate([15.5,8.9,0])
    unit();    
};
