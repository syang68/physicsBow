/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_character)){
	switch obj_character.arrow_type{
		case 0:
			if(obj_character.normal_arrow_amount <=0){
				arrow_type_text = "None";
			}
			else{
				arrow_type_text = "Normal Arrows";
			}
			break;
		case 1:
			arrow_type_text = "Gravity Arrows";
			break;
		case 2:
			arrow_type_text = "Green Portal Arrows";
			break;
		case 3:
			arrow_type_text = "Blue Portal Arrows";
			break;
	}
}