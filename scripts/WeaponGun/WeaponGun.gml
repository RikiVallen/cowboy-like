function WeaponGun(_weapon, _projectile) {
    weapon = instance_create_layer(x, y, "Entities", _weapon);
    maxProjectileCount = 6;
    projectileCount = maxProjectileCount;
    projectileSpeed = 1
    fireRate = 1
    reloadTime = 1
    
    return {
        weapon: weapon,
        projectile: _projectile,
        
        maxProjectileCount,
        projectileCount,
        
        projectileSpeed,
        fireRate,
        reloadTime
    }
}