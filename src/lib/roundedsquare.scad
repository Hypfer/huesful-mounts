module rounded_square( width, radius_corner ) {
	translate( [ radius_corner, radius_corner, 0 ] )
		minkowski() {
			square( width - 2 * radius_corner );
			circle( radius_corner );
		}
}

module rounded_square2(width, r_c) {
    hull() {
        translate([r_c, r_c, 0]) circle(r_c);
        translate([r_c, width - r_c, 0]) circle(r_c);
        translate([width - r_c, r_c, 0]) circle(r_c);
        translate([width - r_c, width - r_c, 0]) circle(r_c);
    }
}

module rounded_rectangle(width, height, r_c) {
    hull() {
        translate([r_c, r_c, 0]) circle(r_c);
        translate([r_c, height - r_c, 0]) circle(r_c);
        translate([width - r_c, r_c, 0]) circle(r_c);
        translate([width - r_c, height - r_c, 0]) circle(r_c);
        translate([r_c, height / 2, 0]) cube([width - 2 * r_c, height - 2 * r_c, height]);
        translate([width - r_c, height / 2, 0]) cube([r_c, height - 2 * r_c, height]);
        translate([width / 2, r_c, 0]) cube([width - 2 * r_c, r_c, height]);
        translate([width / 2, height - r_c, 0]) cube([width - 2 * r_c, r_c, height]);
    }
}