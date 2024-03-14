use <./lib/bj_components.scad>
$fn= 192;

difference() {
    bj_reflex_frame(152.4, 225.2);

    translate([45.2, 10.15, 2]) {
        bj_module_hole();
    }

    translate([45.2, 81.6, 2]) {
        bj_module_hole();
    }
    
    translate([45.2, 153, 2]) {
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

translate([45.2, 153, 2]) {
    bj_module_mount();
    bj_module_mount_fillet();
}

translate([45.2, 71.6, 10]) {
    translate([0, 10, 0]) {
        cube([62, 14, 2]);
    }
    
    translate([0, 129.5, 0]) {
        cube([62, 14, 2]);
    }
}

translate([7.7, 92.65, 12.0]) {
    dimmer_switch_v1_dual_frame();
}