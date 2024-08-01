

use <./lib/bj_components.scad>
use <./lib/LYWSD03MMC_mount.scad>
$fn= 192;

difference() {
    bj_reflex_frame(82, 225.2);

    translate([10, 81.6, 2]) {
        bj_module_hole();
    }
    
}


translate([10, 81.6, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([10, 71.6, 10]) {
    translate([0, 10, 0]) {
        cube([62, 14, 2]);
    }
   
}

translate([7.75, 92.65, 12.0]) {
    dimmer_switch_v1_frame();
}



translate([41, 40, 9.5]) {
    LYWSD03MMC_mount();
}

