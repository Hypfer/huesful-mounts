use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 127);

    translate([10, 32.5, 2]) {
        bj_module_hole();
    }
}


translate([10, 32.5, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}



translate([7.75, 7.75, 12.0]) {
    dimmer_switch_v1_frame();
}
