if (tilemap_get_at_pixel(collisionTilemap, x + sprite_width, y + sprite_height)) {
    instance_destroy(self);
}