draw_set_font(fText)
draw_text(camera_get_view_x(view_camera[0]) + 32, camera_get_view_y(view_camera[0]) + 32, string(fps) + "\n" + string(fps_real));
draw_text(camera_get_view_x(view_wport[0]) + 150, camera_get_view_y(view_hport[0]) + 100,"Portsize: " + string(view_wport[0]) + "x" + string(view_hport[0]));
draw_text(camera_get_view_x(view_camera[0]) + 150, camera_get_view_y(view_camera[0]) + 150,"Camsize: " + string(oMainMenu.CamWidth) + "x" + string(oMainMenu.CamHeight));


