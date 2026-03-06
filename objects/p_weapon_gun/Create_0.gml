// Inherit the parent event
event_inherited();

_projectile = projectile;

/// @param {p_character} source
/// @returns {void}
action = function(source) {
    if (_lastAttacked > _attackSpeed) {
        _lastAttacked = 0;
        
        var projectile = instance_create_layer(x, y, "Entities", _projectile);
        projectile.direction = source.getAimAngle();
        projectile.speed = projectileSpeed;
    }
}