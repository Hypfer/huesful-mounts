use <roundedcube.scad>
use <roundedsquare.scad>
use <unionRoundMask.scad>

module bj_reflex_frame(width, height) {
    difference() {
        roundedcube(apply_to = "zmax", size = [width, height, 12], radius = 4);
        translate([2, 2, -0.5]) { // For the preview render
            roundedcube(apply_to = "zmax", size = [width - 4, height - 4, 10.5], radius = 4);
        }
    }
}

module dimmer_switch_v1_frame() {
    difference() {
        linear_extrude(5.5) {
            rounded_rectangle(66.5, 111.5, 1);
        }

        translate([3, 3, -0.1]) {//actually 0
            cube([60.5, 105.5, 5.7]); //extended for the prev render to work better. actually 5.5
        }

        translate([26.25, 0, 1]) {
            cube([14, 3, 4.5]);
        }

        translate([65, 7.2, 0]) {
            cube([1.5, 6, 2.5]);
        }

        translate([65, 99, 0]) {
            cube([1.5, 6, 2.5]);
        }

        translate([0, 7.2, 0]) {
            cube([1.5, 6, 2.5]);
        }

        translate([0, 99, 0]) {
            cube([1.5, 6, 2.5]);
        }
    }
}

module flipped_dimmer_switch_v1_frame() {
    center = [66.5 / 2, 111.5 / 2, 5.7 / 2]; //TODO: can this be dynamic?

    translate(center) {
        rotate([0, 0, 180]) {
            translate(-center) {
                dimmer_switch_v1_frame();
            }
        }
    }
}

module dimmer_switch_v1_dual_frame() {
    difference() {
        union() {
            dimmer_switch_v1_frame();

            translate([70.5, 0, 0]) {
                dimmer_switch_v1_frame();
            }
        }

        translate([40.25, 3, -0.1]) {
            cube([57, 44.6, 5.7]); //extended for the preview render to work better. actually 5.5
        }

        translate([40.25, 64.05, -0.1]) {
            cube([57, 44.45, 5.7]); //extended for the preview render to work better. actually 5.5
        }
    }
}

module bj_module_mount() {
    difference() {
        cube([62, 62, 10]);

        translate([5.5, 5.5, -0.1]) {
            linear_extrude(12) {
                rounded_square2(51, 9);
            }
        }

        translate([3.4, 3.4, 1.5]) {
            linear_extrude(12) {
                rounded_square2(55.2, 9);
            }
        }
    }

    translate([13.5, 3.5, 1.5]) {
        cube([35, 2, 1.5]);
    }

    translate([13.5, 56.5, 1.5]) {
        cube([35, 2, 1.5]);
    }

    translate([56.5, 13.5, 1.5]) {
        cube([2, 35, 1.5]);
    }

    translate([3.5, 13.5, 1.5]) {
        cube([2, 35, 1.5]);
    }
}

module bj_module_mount_fillet() {
    difference() {
        unionRound(5,10) {
            translate([0,0,1]) {
                cube([62,62,6]);
            }
            translate([-6.5,-6.5, 8]) {
                cube([75,75,1]);
            }
        }
        
        translate([-6.5,-6.5, 8]) {
            cube([75,75,6]);
        }
        
        bj_module_hole();
    }
}

module bj_module_hole() {
    cube([62, 62, 10]);
}
