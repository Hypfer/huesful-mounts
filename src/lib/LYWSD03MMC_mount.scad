//Xiaomi Mijia LYWSD03MMC Thermo/Hygrometer Wall mount JTN 20231106

// Source: https://forum.drucktipps3d.de/forum/thread/31082-eine-halterung-f%C3%BCr-xiaomi-lywsd03mmc-thermo-hygrometer-in-openscad/

$fa = 3;
$fs = 0.25;
eps = 1/128;

mit = 12.5;					//Mijia thickness
mw = 43;					//Mijia width (and height)
cr = 5;						//corner rounding radius
bt = 2.5;					//back thickness
mt = 1.3;					//material thickness
ct = 2;						//front chamfer thickness
hh = 24;					//holder external height
shd = 3;					//screw hole diameter
shdd = 6.5;					//screw head diameter
shs = -1;					//screw hole separation, set to 0 for one hole, to -1 for no holes.
shy = 7.5;					//screw hole y offset from bottom
ocr = cr+mt;				//outer corner rounding radius
hc = mw/2-cr;				//hull corner offsets
shhs = 0.5;					//screw head cylindrical part height
shh = (shdd-shd)/2+shhs;	//screw head height


module LYWSD03MMC_mount() {
    //echo(mit+bt+ct);

    difference() {
        linear_extrude(height=mit+bt+ct,convexity=5)
            offset(ocr) offset(-ocr) square(mw+2*mt,center=true);											//outer box
        translate([0,0,bt]) hull() for(i=[-hc,hc],j=[-hc,hc]) translate([i,j]) union() {					//inner box
            cylinder(h=mit,r=cr);
            translate([0,0,mit]) cylinder(h=ct+eps, r1=cr,r2=cr-ct);
        }
        translate([0,hh,(mit+bt+ct+eps/2)/2]) cube([mw+2*mt+eps,mw+2*mt+eps,mit+bt+ct+eps],center=true);	//cut to size
        if(shs >= 0) for(i=[-shs/2,shs/2]) translate([i,-mw/2-mt+shy]) union() {											//screw holes
            cylinder(h=bt-shh,d=shd);
            translate([0,0,bt-shh]) cylinder(h=shh-shhs+eps,d1=shd,d2=shdd);
            translate([0,0,bt-shhs]) cylinder(h=shhs+eps,d=shdd);
        }
    }	
}

//Total Width: 45.6