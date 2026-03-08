_verticalMovement = keyboard_check(ord("S")) - keyboard_check(ord("W"));
_horizontalMovement = keyboard_check(ord("D")) - keyboard_check(ord("A"));
_normalisedMovement = object_moveto_normalised(_horizontalMovement, _verticalMovement);

if (_normalisedMovement.isMoving) {
    _angle += angle_difference(_normalisedMovement.direction, _angle * 0.5);
}

orbit_mouse_around_object(self, weaponStruct.weapon, 1)

move_and_collide(
    _normalisedMovement.x * playerStruct.movementSpeed, 
    _normalisedMovement.y * playerStruct.movementSpeed, 
    playerStruct.collision,
    undefined, undefined, undefined, 
    playerStruct.movementSpeed, 
    playerStruct.movementSpeed
);

if (mouse_check_button(1)) {
    response = weaponStruct.weapon.shoot(weaponStruct, playerStruct)
    weaponStruct = response.weaponStruct;
    playerStruct = response.characterStruct;
}

if (keyboard_check(ord("R"))) {
    response = weaponStruct.weapon.reload(weaponStruct, playerStruct)
    weaponStruct = response.weaponStruct;
    playerStruct = response.characterStruct;
}