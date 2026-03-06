_verticalMovement = keyboard_check(ord("S")) - keyboard_check(ord("W"));
_horizontalMovement = keyboard_check(ord("D")) - keyboard_check(ord("A"));

_movement = object_moveto_normalised(_horizontalMovement, _verticalMovement);

if (_movement.isMoving) {
    _angle += angle_difference(_movement.direction, _angle);
}

move_and_collide(
    _movement.x * movementSpeed, 
    _movement.y * movementSpeed, 
    [collisionTilemap, p_character],
    undefined, undefined, undefined, 
    movementSpeed, 
    movementSpeed
);

if (mouse_check_button(mb_left)) {
    _weapon.action(self)
}