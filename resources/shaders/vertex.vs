#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColour;
layout (location = 2) in vec2 aTexCoord;

uniform vec4 ourColour;
out vec4 vertexColour;
out vec2 texCoord;

uniform mat4 transform;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position = projection * view * model * transform * vec4(aPos, 1.0f);
    texCoord = aTexCoord;
}