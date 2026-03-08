//// @description consumes an x and y value and ensures a normalised value.

function object_moveto_normalised(xMov, yMov) {
    _direction = point_direction(0, 0, xMov, yMov);
    _inputLength = xMov != 0 || yMov != 0;
    
    return {
        x: lengthdir_x(_inputLength, _direction),
        y: lengthdir_y(_inputLength, _direction),
        direction: _direction,
        isMoving: _inputLength,
    }
}