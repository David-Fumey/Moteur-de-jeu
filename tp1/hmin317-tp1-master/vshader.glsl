#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform mat4 mvp_matrix;

attribute vec4 a_position;
attribute vec2 a_texcoord;

varying vec2 v_texcoord;
/*
in vec4 normal;
out float color_factor;
uniform vec4 light_direction;

in vec4 vertex;
*/
//! [0]
void main()
{
    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * a_position;

    // Pass texture coordinate to fragment shader
    // Value will be automatically interpolated to fragments inside polygon faces
    v_texcoord = a_texcoord;
    //color_factor = max(dot(normal, light_direction), 0.0);
    //gl_Position = mvp_matrix * vertex;
}
//! [0]
