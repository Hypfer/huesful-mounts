use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(90, 90);

    translate([14, 14, 2]) {
        bj_module_hole();
    }
}


translate([14, 14, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([6.75, 6.75, 12.0]) {
    tap_dial_frame();

}



