#version 440 core
 
layout (points) in;
layout (triangle_strip, max_vertices = 4) out;

out vec2 vertex_uv;

in VS_OUT 
{
	vec3 pos;
    vec2 TexCoords;
} gs_in[];

out vec2 uv;
 
void main() 
{
    for(int i = 0 ; i < gl_in.length() ; i++){
        uv = gs_in[i].TexCoords;
        EmitVertex();
    }
    EndPrimitive();
}