precision mediump float;

varying vec2 v_vTexcoord;
varying vec2 v_vPosition;

uniform sampler2D gm_BaseTexture;
uniform vec2 u_center;
uniform float u_time;
uniform float u_strength;
uniform float u_radius;

void main() {
    vec2 dir = v_vTexcoord - u_center;
    float dist = length(dir);

    // Only apply effect within radius
    if (dist < u_radius) {
        float ripple = sin(20.0 * dist - u_time * 5.0) * u_strength * (1.0 - dist / u_radius);
        vec2 offset = normalize(dir) * ripple;
        gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord + offset);
    } else {
        gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord);
    }
}
