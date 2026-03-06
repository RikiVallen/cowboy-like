// Inherit the parent event
event_inherited();

#macro DETECT_PLAYER_NEARBY 0
alarm[DETECT_PLAYER_NEARBY] = 1;



function objectMoveProximity() {
    _distance = distance_to_object(o_player);
    if (_distance < detectionRange || (_isFollowingTarget && _distance < detectionRange * 1.5)) {
       if (!_isFollowingTarget) {
           _isFollowingTarget = true;
           alarm[DETECT_PLAYER_NEARBY] = 30;
       } else {
           alarm[DETECT_PLAYER_NEARBY] = 60;
       }
        
    _targetX = o_player.x;
    _targetY = o_player.y;
        
    } else {
        _isFollowingTarget = false;
        _targetX = random_range(xstart - 100, xstart + 100);
        _targetY = random_range(ystart - 100, ystart + 100);
        alarm[DETECT_PLAYER_NEARBY] = 60;
    }
}