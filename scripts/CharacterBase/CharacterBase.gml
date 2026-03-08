function CharacterBase() {
    maxHp = 1;
    currentHp = maxHp;
    movementSpeed = 1;
    
    projectileReserves = {
        bullet: 100
    }
    
    collision = [
        layer_tilemap_get_id("Environment_Collide"),
        p_character
    ]
    
    return {
        maxHp,
        currentHp,
        movementSpeed,
        projectileReserves,
        collision
    }
    
}