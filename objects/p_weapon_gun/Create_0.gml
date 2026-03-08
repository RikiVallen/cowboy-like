// Inherit the parent event
event_inherited();

#macro SHOOT 0
#macro RELOAD 1

_isReloading = false;
_isShooting = false;

// Internal copies of structs for usage in alarms
_weaponStruct = undefined;
_characterStruct = undefined;

/// @param {struct.WeaponGun} weaponStruct
/// @param {struct.CharacterBase} characterStruct Used to modify ammo reserves
shoot = function (weaponStruct, characterStruct) {
    
    _weaponStruct = weaponStruct;
    _characterStruct = characterStruct;
    
    if (!_isShooting && !_isReloading) {
        if (weaponStruct.projectileCount == 0) {
            reload(weaponStruct, characterStruct)
        } else {
            
            var projectile = instance_create_layer(x, y, "Entities", weaponStruct.projectile);
            projectile.direction = weaponStruct.weapon.image_angle;
            projectile.speed = weaponStruct.projectileSpeed;
            
            weaponStruct.projectileCount--;
            alarm[SHOOT] = weaponStruct.fireRate * 60
        }
    }
    
    return {
        weaponStruct,
        characterStruct
    };
}

/// @param {struct.WeaponGun} weaponStruct
/// @param {struct.CharacterBase} characterStruct Used to modify ammo reserves
/// @return {struct.WeaponGun} Mutated weapon struct
/// @return {struct.CharacterBase} Mutated character struct
reload = function(weaponStruct, characterStruct) {
    
    _weaponStruct = weaponStruct;
    _characterStruct = characterStruct;
    
    if (!_isReloading) {
        if (weaponStruct.projectileCount == weaponStruct.maxProjectileCount) {
            show_debug_message("Already have max ammo");
        } else {
            var difference = weaponStruct.maxProjectileCount - weaponStruct.projectileCount;
            alarm[RELOAD] = weaponStruct.reloadTime * 60
        }
    }
   
    return {
        weaponStruct,
        characterStruct
    };
}