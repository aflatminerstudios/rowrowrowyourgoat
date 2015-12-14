//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
uniform float iGlobalTime;
uniform vec3 iResolution;
uniform vec4 iChannel0;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    float speedMultiplier = 0.25;
    float intensityMultiplierX = 0.2;
    float intensityMultiplierY = 0.3;
    vec2 uv = v_vTexcoord.xy;
    
    uv.y += intensityMultiplierY * ((cos((uv.y + (iGlobalTime * 0.04 * speedMultiplier)) * 45.0) * 0.0019) +
    (cos((uv.y + (iGlobalTime * 0.1 * speedMultiplier)) * 10.0) * 0.002));
    
    uv.x += intensityMultiplierX * ((sin((uv.y + (iGlobalTime * 0.07 * speedMultiplier)) * 5.0) * 0.0029) +
    (sin((uv.y + (iGlobalTime * 0.1 * speedMultiplier)) * 5.0) * 0.002));
    
    
    vec4 texColor = texture2D(gm_BaseTexture,uv);
    gl_FragColor = texColor;
}


/*
// Working green shader
void main(void)
{
    vec4 originalColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float Green = originalColor.g;
    
    vec4 newColor = vec4(0.0, Green, 0.0, 1.0);
    gl_FragColor = newColor;
}
*/
