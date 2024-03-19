if obj_global.total_deaths == 0
{
	dialog_text = "Ctrl + down to dig";
}
else if obj_global.total_deaths == 1
{
	dialog_text = "Other dogs take your place if you die";
}
else
{
randomize()
lots_of_text = ["Ctrl + down + left/right to dig across",
"Digging uses water and food",
"Dig to find more water and food",
"Ctrl + down to dig",
"Ctrl + down + left/right to dig across",
"Digging uses water and food",
"Dig to find more water and food",
"Woof woof",
"There are things down there that will help",
"Let's get out of here",
"If you die, your spirit will help other dogs",
"Press z to go to sleep",
"Press ctrl on the house to rest"];
dia_option = random_range(1,13);
dialog_text = lots_of_text[dia_option];
}
