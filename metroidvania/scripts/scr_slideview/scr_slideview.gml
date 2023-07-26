function scr_slideview(argument0, argument1, argument2) {
	//starting point of the view
	startPoint = argument0;

	//end point of the view must be
	endPoint = argument1;

	//incremental value that will make the transition ot view
	incValue = argument2;

	if( startPoint < endPoint )
	{
	return min( startPoint + incValue, endPoint );
	}
	else
	{
	return max( startPoint - incValue, endPoint );
	}



}
