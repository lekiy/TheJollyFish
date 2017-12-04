//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D texColmap;

void main()
{
    vec4 spr;
    vec4 outp;
    spr=texture2D(gm_BaseTexture,v_vTexcoord);
    
    for (float i=0.0;i<=4.0;i++) { //we only have 4 colors (0-4)
        if (vec3(spr)==vec3(texture2D(texColmap,vec2(i/32.0,0.0)))) outp=vec4(i/32.0,i/32.0,i/32.0,spr.a); //32: The color map width
    }
    
    gl_FragColor=outp;
}

/*
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelColor1;
uniform float pixelColor2;

void main()
{
	/*vec2 offsetX;
	offsetX.x = pixelW;
	vec2 offsetY;
	offsetY.y = pixelH;
	
	float alpha = texture2D( gm_BaseTexture, v_vTexcoord ).a;
	
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetX).a;
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetX).a;
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord + offsetY).a;	
	alpha += ceil(texture2D( gm_BaseTexture, v_vTexcoord - offsetY).a;*/
	
	
	
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//gl_FragColor.a = alpha;
//}
