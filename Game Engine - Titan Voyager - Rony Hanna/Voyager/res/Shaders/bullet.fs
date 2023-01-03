#version 440 core
out vec4 FragColor;

in VS_OUT 
{
    float time;
    vec2 TexCoords;
} fs_in;

uniform sampler2D meshTexture;

void main()
{
    vec4 texColor = texture(meshTexture, fs_in.TexCoords);
    texColor = texColor + vec4(fs_in.time*0.1, -fs_in.time*0.05, -fs_in.time*0.05, 1);
    FragColor = texColor;
} 