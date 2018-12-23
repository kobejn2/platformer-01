key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
h_spd = move * move_spd;
if(key_jump && (v_spd == 0)) {
	v_spd = v_spd - 10;
}
else {
	v_spd = v_spd + grv;
}
//v_spd = -1 * key_jump;

if(place_meeting(x + h_spd, y, o_wall)) {
	while (! place_meeting(x + sign(h_spd), y, o_wall)) {
		x = x + sign(h_spd);
	}
	h_spd = 0;
}
x = x + h_spd;

if(place_meeting(x, y + v_spd, o_wall)) {
	while (! place_meeting(x, y + sign(v_spd), o_wall)) {
		y = y + sign(v_spd);
	}
	v_spd = 0;
}

y = y + v_spd;

if(y == 0) {
	
}