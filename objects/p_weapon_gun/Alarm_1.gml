// Used for timing reloading
var difference = _weaponStruct.maxProjectileCount - _weaponStruct.projectileCount;
 _characterStruct.projectileReserves.bullet -= difference;
_weaponStruct.projectileCount = _weaponStruct.maxProjectileCount