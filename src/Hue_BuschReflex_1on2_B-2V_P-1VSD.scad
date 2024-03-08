use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 153.6);

    translate([10, 10.15, 2]) {
        bj_module_hole();
    }

    translate([10, 81.6, 2]) {
        bj_module_hole();
    }
}


translate([10, 10.15, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 81.6, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}


translate([7.75, 21.05, 12.0]) {
    dimmer_switch_v1_frame();
}

translate([10, 0, 10]) {
    translate([0, 129.55, 0]) {
        cube([62, 15, 2]);
    }

    translate([0, 9.05, 0]) {
        cube([62, 15, 2]);
    }
}