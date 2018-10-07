#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform sampler2D texture;

varying vec2 v_texcoord;
/*
in float color_factor;
out vec4 color;
uniform vec4 ambiant_color;
*/
//! [0]
void main()
{
    // Set fragment color from texture
    gl_FragColor = texture2D(texture, v_texcoord);
    //color = color_factor * ambiant_color;
}
//! [0]

