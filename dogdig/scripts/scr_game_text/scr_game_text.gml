/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id) {
		

	// Room code 2123

	case "shop":

		scr_text("Welcome to dogshop. whatbuy?");/*
		if obj_global.jump_high == 5
		{	
			scr_option("150g - fastdig", "dig");
		}
		else if obj_global.jump_high < 5
		{
			scr_option("20g - jumphigher","jump");
		}
		
		scr_option("10g - morefood", "food");
		scr_option("10g - morewater", "water");
		scr_option("Nuffin", "bye");*/
		break;
		
	case "bye":
		scr_text("bye");
		obj_shop.open = false;
		break;
		
	case "dig":
		if obj_global.digfast > 1
		{
			scr_text("alredy have");
		}
		else if obj_global.gold < 150
		{
			scr_text("need mo money");
		}
		else if obj_global.gold > 149
		{
			obj_global.gold -= 20;
			obj_global.digfast = 5;
			scr_text("now digfast");
		}
		obj_shop.open = false;
		break;
case "jump":
		 if obj_global.gold < 20
		{
			scr_text("need mo money");
		}
		else if obj_global.gold > 19
		{
			obj_global.gold -= 20;
			obj_global.jump_high += 1;
			obj_dog.jsp += 1;
			scr_text("now jumphigher");
		}
		obj_shop.open = false;
		break;
		
	case "food":
				if obj_global.gold > 9
		{
			obj_global.gold -= 10;
			obj_global.food_max += 10; 
			scr_text("food4u");
		}
		else if obj_global.gold < 10
		{
			scr_text("need mo money");
		}

		obj_shop.open = false;
		break;
		
	case "water":
				if obj_global.gold > 9
		{
			obj_global.gold -= 010;
			obj_global.water_max += 10;
			scr_text("wartar");
		}
		else if obj_global.gold < 10
		{
			scr_text("need mo money");
		}
		obj_shop.open = false;
		break;
	}
}