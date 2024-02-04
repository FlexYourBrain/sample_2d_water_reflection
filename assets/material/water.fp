varying mediump vec2 var_texcoord0;
varying mediump vec2 var_texcoord1;

uniform lowp sampler2D water; // render target texture
uniform lowp sampler2D dismap; // displacement map
uniform lowp vec4 time;

void main()
{
    
    vec4 color = vec4(0.16, 0.14, 0.14, 0.0);
    vec4 dismapp = texture(dismap, var_texcoord1.xy);
    vec2 offset = var_texcoord0.xy + (dismapp.rg - .5) ;
    vec4 final_color = texture(water, offset.xy) - color;


    
    gl_FragColor = vec4(final_color);
}
