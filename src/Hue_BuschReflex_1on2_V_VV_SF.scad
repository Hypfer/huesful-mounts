use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 196);

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


translate([7.75, 76.8, 12.0]) {
    flipped_dimmer_switch_v1_frame();
}
