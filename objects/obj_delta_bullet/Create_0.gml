damage = 8;

image_angle = point_direction(x, y, mouse_x, mouse_y);
var vectX = mouse_x - x;
var vectY = mouse_y - y;
var magnitude = sqrt(vectX * vectX + vectY * vectY);
moveSpeed = 5;
horizontalSpeed = moveSpeed * (vectX / magnitude);
verticalSpeed = moveSpeed * (vectY / magnitude);