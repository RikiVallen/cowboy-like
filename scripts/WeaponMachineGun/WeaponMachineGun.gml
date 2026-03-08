function WeaponMachineGun(_weapon, _projectile) {
    
    struct = WeaponGun(_weapon, _projectile)
    struct.fireRate = 0.01
    struct.projectileSpeed = 3
    struct.maxProjectileCount = 1000
    struct.projectileCount = struct.maxProjectileCount
    
    return struct
}