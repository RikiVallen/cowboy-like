function Weapon(_projectile, _attackSpeed, _projectileSpeed) {
    return {
        projectile: _projectile,
        attackSpeed: _attackSpeed,
        projectileSpeed: _projectileSpeed,
        lastAttack: 0,
        
        /// @param {p_character} source Entity which has weapon equipped
        attack: function(source) {
            if (self.lastAttack > self.attackSpeed) {
                self.lastAttack = 0;
                
                var projectile = instance_create_layer(
                    source.x,
                    source.y,
                    "Entities",
                    self.projectile
                )
                
                projectile.direction = source.getAimAngle();
                projectile.speed = self.projectileSpeed;
            }
        }
    }
}