RSRC                     CanvasItemShader                                                                       resource/name    _code    script/script        /   res://Steno Hero/Shaders/WordTrackerShader.res �          CanvasItemShader                   fragment_ofs           	   fragment    �  uniform float CutoffPercent;
uniform color LeftColor;
uniform color RightColor;

uniform float GradientWidth;

if(SCREEN_UV.x < CutoffPercent){
	if(GradientWidth != 0){
	
		float percent = clamp( (CutoffPercent - SCREEN_UV.x) / GradientWidth, 0, 1);	
		vec3 GradientColor = mix(LeftColor.rgb, RightColor.rgb, percent);
		COLOR.rgb = GradientColor;
	}else{
		COLOR.rgb = LeftColor.rgb;
	}
}else{
	COLOR.rgb = RightColor.rgb;
}       vertex_ofs              vertex           
   light_ofs              light        RSRC