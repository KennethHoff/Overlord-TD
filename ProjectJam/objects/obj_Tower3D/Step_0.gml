x = (mouse_x div 32) * 32+32;
y = (mouse_y div 32) * 32+32;

if (place_meeting(x,y,obj_Path) || place_meeting(x,y,obj_TowerParent)) col = global.errorCol; // Hvis du er over en Path eller et annet Tower, vil overlayet bli "errorCol".

else col = global.placeableCol;