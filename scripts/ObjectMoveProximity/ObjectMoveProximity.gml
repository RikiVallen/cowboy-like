function object_proximity_target(self, target, minDistance, maxDistance) {
    _distance = distance_to_object(target);
    xDistanceToSpawn = xstart - x;
    yDistanceToSpawn = ystart - y;
    
        
    // If object too close
    if (_distance < minDistance) {
        return {
            x: 0,
            y: 0
        }
    }
    
    // If object still within range though
    if (_distance < maxDistance) {
        
        return {
            x: target.x - x,
            y: target.y - y
        }
    }
    
    if (distance_to_point(xDistanceToSpawn, yDistanceToSpawn) > maxDistance) {
        if (xstart - x > 0.1 || ystart - y > 0.1) {
           return {
              x: xstart - x,
              y: ystart - y
           }
        }
        return { 
            x: 0,
            y: 0
        }
    }
}