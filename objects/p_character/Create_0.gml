_hp = hp;
_angle = 0;
_aimAngle = 0;

takeDamage = function (damage) {
    _hp -= damage;
    
    if (_hp == 0) {
        instance_destroy();
    }
}

getAimAngle = function () {
    return _aimAngle;
}