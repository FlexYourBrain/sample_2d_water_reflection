
varying mediump vec2 var_texcoord1;
uniform lowp sampler2D tex0;

void main()
{
    vec4 texscroll = texture2D(tex0, var_texcoord1.xy);

    gl_FragColor = vec4(texscroll.rgb ,texscroll.a);
}