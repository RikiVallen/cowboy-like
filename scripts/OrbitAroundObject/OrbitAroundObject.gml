function mouse_orbit_around_object(orbitSource, orbitTarget, offset = 0) {
    _aimAngle = point_direction(self.x, self.y, mouse_x, mouse_y);
    _aimX = orbitSource.x;
    _aimY = orbitSource.y;
    
    _radius = orbitSource.sprite_width + offset;
    
    offsetX = _aimX + lengthdir_x(_radius, _aimAngle);
    offsetY = _aimY + lengthdir_y(_radius, _aimAngle);
    
    orbitTarget.x = offsetX ;
    orbitTarget.y = offsetY;
    
    orbitTarget.image_angle = _aimAngle;
    
    return _aimAngle;
}

function target_orbit_around_object(orbitSource, orbitTarget, target, offset = 0) {
    _aimAngle = point_direction(self.x, self.y, target.x, target.y);
    _aimX = orbitSource.x;
    _aimY = orbitSource.y;
    
    _radius = orbitSource.sprite_width + offset;
    
    offsetX = _aimX + lengthdir_x(_radius, _aimAngle);
    offsetY = _aimY + lengthdir_y(_radius, _aimAngle);
    
    orbitTarget.x = offsetX ;
    orbitTarget.y = offsetY;
    
    orbitTarget.image_angle = _aimAngle;
    
    return _aimAngle;
}