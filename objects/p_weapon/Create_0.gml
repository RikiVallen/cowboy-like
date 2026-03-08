_lastAttack = 0;
_direction = 0;

getLastAttack = function() {
    return _lastAttack;
}

getDirection = function() {
    return _direction
}

resetLastAttack = function() {
    _lastAttack = 0;
}

setDirection = function(newDirection) {
    _direction = newDirection
}