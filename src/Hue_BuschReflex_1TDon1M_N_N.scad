use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(87, 87);

    translate([12.5, 12.5, 2]) {
        bj_module_hole();
    }
}


translate([12.5, 12.5, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([5.15, 5.15, 12.0]) {
    tap_dial_frame();

}



