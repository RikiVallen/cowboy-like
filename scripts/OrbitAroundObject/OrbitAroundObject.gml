function mouse_orbit_around_object(orbitTarget, orbitSource = self, offset = 0) {
    _orbitSource = orbitSource == undefined ? self : orbitSource;
    
    _aimAngle = point_direction(self.x, self.y, mouse_x, mouse_y);
    _aimX = x;
    _aimY = y;
    
    _radius = self.sprite_width + offset;
    
    offsetX = _aimX + lengthdir_x(_radius, _aimAngle);
    offsetY = _aimY + lengthdir_y(_radius, _aimAngle);
    
    orbitTarget.x = offsetX ;
    orbitTarget.y = offsetY;
    
    orbitTarget.image_angle = _aimAngle;
    
    return _aimAngle;
}

function target_orbit_around_object(orbitTarget, orbitSource = self, target, offset = 0) {
     _orbitSource = orbitSource == undefined ? self : orbitSource;
    
    _aimAngle = point_direction(self.x, self.y, target.x, target.y);
    _aimX = x;
    _aimY = y;
    
    _radius = self.sprite_width + offset;
    
    offsetX = _aimX + lengthdir_x(_radius, _aimAngle);
    offsetY = _aimY + lengthdir_y(_radius, _aimAngle);
    
    orbitTarget.x = offsetX ;
    orbitTarget.y = offsetY;
    
    orbitTarget.image_angle = _aimAngle;
    
    return _aimAngle;
}