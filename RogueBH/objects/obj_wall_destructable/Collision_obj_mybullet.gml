if bossblock
{
	if obj_global.completed_repetitions_required == obj_global.number_of_repetitions_required
	{
		obj_scr_output.raw_text += "\n\n\nmjr_vuln\n\n\nmjr_vuln\n\n\nmjr_vuln"
		instance_destroy();
	}
	else
	{
		obj_scr_output.raw_text += "\n\nfnd_more\nvuln"
	}
}
else
{
	if obj_global.completed_repetitions_required == obj_global.number_of_repetitions_required
	{
		obj_scr_output.raw_text += "\npatched"
	}
	else 
	{
		obj_scr_output.raw_text += "\nsbx_esc"
		instance_destroy();
	}
}
/// @desc ???











