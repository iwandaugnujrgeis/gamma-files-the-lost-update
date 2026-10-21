// assets/rediscovered/shaders/core/fluffy_clouds.fsh
#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;
uniform sampler2D Sampler1;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;

in vec2 texCoord0;
in float vertexDistance;
in vec4 vertexColor;
in vec4 normal;

out vec4 fragColor;

void main() {
	vec4 rawColor = texture(Sampler0, texCoord0);
	float scale = 32.0;
	vec2 fluffCoord = texCoord0 * scale;
	vec4 fluffColor = texture(Sampler1, fluffCoord);
	fluffColor.a = rawColor.a;
	vec4 color = fluffColor * vertexColor * ColorModulator;
	if (color.a < 0.01) {
		discard;
	}
	fragColor = linear_fog(color, vertexDistance, FogStart * 1.2, FogEnd * 3.0, FogColor);
}