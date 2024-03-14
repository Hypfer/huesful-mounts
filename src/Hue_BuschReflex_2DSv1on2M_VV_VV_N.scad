use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(152.4, 153.6);

    translate([45.2, 10.15, 2]) {
        bj_module_hole();
    }

    translate([45.2, 81.6, 2]) {
        bj_module_hole();
    }
}


translate([45.2, 10.15, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([45.2, 81.6, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}


translate([7.6, 21.05, 12.0]) {
    dimmer_switch_v1_dual_frame();
}

translate([45.2, 0, 10]) {
    translate([0, 129.5, 0]) {
        cube([62, 14, 2]);
    }

    translate([0, 10, 0]) {
        cube([62, 14, 2]);
    }
}
