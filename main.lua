-- main.lua
-- 

display.setStatusBar(display.HiddenStatusBar);	

-- get the usable coordinates for the device
local screen = 
{
	left = display.screenOriginX,
	top = display.screenOriginY,
	right = display.contentWidth - display.screenOriginX,
	bottom = display.contentHeight - display.screenOriginY
};

-- get the background image
-- please note that the reference-point is in the center of the image,
-- by putting the image in the center of the screen the bleed-zones will only be
-- displayed on devices with different aspect ratios than the base device.
local bg = display.newImageRect("blob.png", 610, 420);
bg.x = display.contentWidth / 2;
bg.y = display.contentHeight / 2;


local bg1 = display.newImageRect("grass.png", 102, 101);
bg1.x = display.contentWidth / 2;
bg1.y = display.contentHeight / 2;



-- show usable coordinates
display.newText("left: "..tostring(screen.left), 10, 10, native.systemFont, 14);
display.newText("top: "..tostring(screen.top), 10, 25, native.systemFont, 14);
display.newText("right: "..tostring(screen.right), 10, 40, native.systemFont, 14);
display.newText("bottom: "..tostring(screen.bottom), 10, 55, native.systemFont, 14);
