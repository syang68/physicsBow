//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
uniform sampler2D gm_BaseTexture;
uniform vec2 u_center;
uniform float u_time;
uniform float u_strength;
uniform float u_radius;

void main() {
    vec2 texCoord = v_vTexcoord;
    vec2 dir = texCoord - u_center;
    float dist = length(dir);

    if (dist < u_radius) {
        float ripple = sin(30.0 * dist - u_time * 5.0) * u_strength * (1.0 - dist / u_radius);
        texCoord += normalize(dir) * ripple;
    }

    gl_FragColor = texture2D(gm_BaseTexture, texCoord);
}
