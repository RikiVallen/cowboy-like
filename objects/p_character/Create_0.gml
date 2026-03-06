_hp = hp;
_angle = 0;
_weapon = instance_create_layer(x, y, "Entities", weapon);
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