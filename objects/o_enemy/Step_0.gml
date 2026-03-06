// Inherit the parent event
event_inherited();

_horizontalMovement = _targetX - x;
_verticalMovement = _targetY - y;

_movement = object_moveto_normalised(_horizontalMovement, _verticalMovement);

if (_movement.isMoving || _isFollowingTarget) {
    _angle += angle_difference(_movement.direction, _angle);
}

//if (_isFollowingTarget) {
    ////_weapon.action()
//}

move_and_collide(
    _movement.x * movementSpeed, 
    _movement.y * movementSpeed, 
    [collisionTilemap, p_character], 
    undefined, undefined, undefined, 
    movementSpeed, movementSpeed
);