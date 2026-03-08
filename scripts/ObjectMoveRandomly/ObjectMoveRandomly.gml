function object_move_randomly(self, range) {
    return {
        x: random_range(self.x - range, self.x + range),
        y: random_range(self.y - range, self.y + range),
    }
    
}