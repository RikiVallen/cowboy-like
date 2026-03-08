function WeaponPistol(_weapon, _projectile) {
    
    struct = WeaponGun(_weapon, _projectile)
    struct.fireRate = 0.3
    struct.projectileSpeed = 2
    struct.maxProjectileCount = 16
    struct.projectileCount = struct.maxProjectileCount
    
    return struct
}