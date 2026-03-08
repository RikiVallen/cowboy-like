target = object_proximity_target(self, o_player, 15, 40);
_normalisedMovement = object_moveto_normalised(target.x, target.y);

if (_normalisedMovement.isMoving) {
    _angle += angle_difference(_normalisedMovement.direction, _angle);
}

move_and_collide(
    _normalisedMovement.x * properties.movementSpeed, 
    _normalisedMovement.y * properties.movementSpeed, 
    properties.collision,
    undefined, undefined, undefined, 
    properties.movementSpeed, 
    properties.movementSpeed
);