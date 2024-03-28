use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(90, 160);

    translate([14, 10.15, 2]) {
        bj_module_hole();
    }

    translate([14, 81.6, 2]) {
        bj_module_hole();
    }
}


translate([14, 10.15, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([14, 81.6, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}


translate([6.75, 76.5, 12.0]) {
    tap_dial_frame();
}
