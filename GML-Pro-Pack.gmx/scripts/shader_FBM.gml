shader_set(gles_FBM);
shader_set_uniform_f(global.gles_FBM_time,argument0);
shader_set_uniform_f(global.gles_FBM_colorAmp,argument1);
shader_set_uniform_f(global.gles_FBM_resolution,argument2,argument3);
shader_set_uniform_f(global.gles_FBM_position,argument4,argument5);
shader_set_uniform_f(global.gles_FBM_fader,argument6,argument7,argument8);
shader_set_uniform_f(global.gles_FBM_factor,argument9);
shader_set_uniform_f(global.gles_FBM_p1,
 global.gles_FBM_pattern1[0],
 global.gles_FBM_pattern1[1],
 global.gles_FBM_pattern1[2],
 global.gles_FBM_pattern1[3]
);
shader_set_uniform_f(global.gles_FBM_p2,
 global.gles_FBM_pattern2[0],
 global.gles_FBM_pattern2[1],
 global.gles_FBM_pattern2[2],
 global.gles_FBM_pattern2[3]
);
shader_set_uniform_f(global.gles_FBM_p3,
 global.gles_FBM_pattern3[0],
 global.gles_FBM_pattern3[1],
 global.gles_FBM_pattern3[2],
 global.gles_FBM_pattern3[3]
);
shader_set_uniform_f(global.gles_FBM_p4,
 global.gles_FBM_pattern4[0],
 global.gles_FBM_pattern4[1],
 global.gles_FBM_pattern4[2],
 global.gles_FBM_pattern4[3]
);
