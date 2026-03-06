function camera_goto_object( obj, cam = view_camera[0],  ) {
    _camera = cam;

    _camera_width = camera_get_view_width(_camera);
    _camera_height = camera_get_view_height(_camera);
    
    _camera_x = obj.x - _camera_width / 2;
    _camera_y = obj.y - _camera_height / 2;
    
    _camera_x = clamp(_camera_x, 0, room_width - _camera_width);
    _camera_y = clamp(_camera_y, 0, room_height - _camera_height);
    
    camera_set_view_pos(_camera, _camera_x, _camera_y);
}