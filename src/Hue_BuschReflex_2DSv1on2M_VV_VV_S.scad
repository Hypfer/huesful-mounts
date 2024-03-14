use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 242.4);

    translate([10, 54.5, 2]) {
        bj_module_hole();
    }

    translate([10, 125.9, 2]) {
        bj_module_hole();
    }
}


translate([10, 54.5, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 125.9, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([7.75, 7.75, 12.0]) {
    dimmer_switch_v1_frame();
}

translate([7.75, 123.25, 12.0]) {
    dimmer_switch_v1_frame();
}

