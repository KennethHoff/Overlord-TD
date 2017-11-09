x = mouse_x;
y = mouse_y;

if (place_meeting(x,y,obj_Path) || place_meeting(x,y,obj_TowerParent)) col = global.errorCol; // Hvis du er over en Path eller et annet Tower, vil overlayet bli "errorCol".

else col = global.placeableCol;