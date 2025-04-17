varying vec4 v_vColour;
varying vec2 v_vTexcoord;

uniform float u_time;
uniform vec2 u_center;

void main()
{
    vec2 pos = v_vTexcoord - u_center;
    float dist = length(pos);
    
    // Ripple calculation
    float ripple = sin(10.0 * dist - u_time * 5.0) * 0.02;

    vec2 uv = v_vTexcoord + (pos / dist) * ripple;

    gl_FragColor = texture2D(gm_BaseTexture, uv) * v_vColour;
}
