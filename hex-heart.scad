/* 
 * 3D Printable Hex Heart
 *
 * Copyright (C) 2015, Uri Shaked.
 * License: MIT
 */

use <hexchain.scad>

module heart(r = 10) {
    square(r);
    translate([r / 2, r,0]) circle(r / 2);
    translate([r, r / 2,0]) circle(r / 2);
}

intersection() {
    translate([-15, -15, 0])
    linear_extrude(h=2) 
        heart(35);
    18units();
}
