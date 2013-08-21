var _sound,_gain,_pitch,_loop,_priority,_modulate_pitch,ecks,why,zed,dx,dy,dz,i;
_sound=argument0;
_gain=argument1;
_pitch=argument2;
_loop=argument3;
_priority=argument4;
_modulate_pitch=argument5;
dx=argument6;
dy=argument7;
dz=argument8;
if ( _modulate_pitch == true ) _pitch=_pitch+_pitch/8-random(_pitch/4);
i=global.emitters;
global.emitters+=1;
emitter=audio_emitter_create();
global.emitter[i]=emitter;
audio_emitter_falloff(emitter,global.falloff_ref_dist,global.falloff_max_dist,falloff_factor);
audio_emitter_gain(emitter,_gain);
audio_emitter_pitch(emitter,_pitch);
audio_emitter_position(emitter,ecks,why,zed);
audio_emitter_velocity(emitter,dx,dy,dz);
global.emitted[i]=audio_play_sound_on(emitter,_sound,_loop,_priority);
return emitter;
