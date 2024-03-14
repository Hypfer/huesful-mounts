use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 327.4);

    translate([10, 10.15, 2]) {
        bj_module_hole();
    }

    translate([10, 81.6, 2]) {
        bj_module_hole();
    }

    translate([10, 153, 2]) {
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

translate([10, 153, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 71.6, 10]) {
    translate([0, 10, 0]) {
        cube([62, 14, 2]);
    }

    translate([0, 129.5, 0]) {
        cube([62, 14, 2]);
    }
}

translate([7.75, 92.65, 12.0]) {
    dimmer_switch_v1_frame();
}

translate([7.75, 208.2, 12.0]) {
    dimmer_switch_v1_frame();
}

