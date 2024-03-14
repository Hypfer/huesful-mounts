use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(152.4, 153.6);

    translate([45.2, 45.7, 2]) {
        bj_module_hole();
    }
}

translate([45.2, 45.7, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}


difference() {
    union() {
        translate([7.7, 21.05, 12.0]) {
            dimmer_switch_v1_frame();
        }

        translate([78.2, 21.05, 12.0]) {
            dimmer_switch_v1_frame();
        }
    }

    /*
    translate([7.6, 21.05, 12.0]) {
        dimmer_switch_v1_dual_frame();
    }
    */

    translate([45.2, 46.7, 12]) {
        bj_module_hole();
    }
}