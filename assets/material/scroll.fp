#version 140

in vec2 var_texcoord1;
out vec4 color_out;
uniform sampler2D tex0;

void main()
{
    vec4 texscroll = texture(tex0, var_texcoord1.xy);

    color_out = vec4(texscroll.rgb ,texscroll.a);
}