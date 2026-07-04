#version 330

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:sample_lightmap.glsl>
#endif

#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
in ivec2 UV2;
#endif

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
uniform sampler2D Sampler2;
out float sphericalVertexDistance;
out float cylindricalVertexDistance;
#endif

out vec4 vertexColor;
out vec2 texCoord0;

bool is_orthographic() {
    return abs(ProjMat[3][3] - 1.0) < 0.01;
}

const float period = 10000.0;

void main() {
    vec3 pos = Position;
    vec2 posoffset = vec2(0.0);

    if (is_orthographic()) {
        int sectionx = int(round(pos.x / period));
        int sectiony = int(round(pos.y / period));

        pos.x -= period * float(sectionx);
        pos.y -= period * float(sectiony);

        if (sectiony == 1) {
            posoffset = vec2(1.1, -0.2);
            pos *= 0.9;
        } else if (sectiony == 2) {
            posoffset = vec2(-0.85, -0.3);
            pos *= 0.85;
        } else if (sectiony == 3) {
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 4) {
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 5) {
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 6) {
            posoffset = vec2(1.0, 1.0);
        } else if (sectiony == 7) {
            posoffset = vec2(-0.8, 1.6);
            pos *= 0.8;
        } else if (sectionx == 7) {
            posoffset = vec2(-1.6, 3.2);
            pos.y += 73.0;
            pos *= 1.6;
        } else if (sectionx == 8) {
            posoffset = vec2(-1.6, 3.2);
            pos.y += 93.0;
            pos *= 1.6;
        } else if (sectiony == 8) {
            posoffset = vec2(-0.416, 0.832);
            pos *= 0.416;
        } else if (sectiony == 10) {
            posoffset = vec2(1.2, 1.6);
            pos *= 0.8;
        } else if (sectiony == 11) {
            posoffset = vec2(1.584, 0.832);
            pos *= 0.416;
        } else if (sectionx == 10) {
            posoffset = vec2(-0.3, 2.6);
            pos.y += 71.0;
            pos *= 1.3;
        } else if (sectionx == 11) {
            posoffset = vec2(0.2, 1.6);
            pos.y += 74.0;
            pos *= 0.8;
        } else if (sectionx == 12) {
            posoffset = vec2(0.5, 1.0);
            pos.y += 91.0;
            pos *= 0.5;
        } else if (sectionx == 13) {
            posoffset = vec2(0.5, 1.0);
            pos.y += 102.0;
            pos *= 0.5;
        } else if (sectionx == 14) {
            posoffset = vec2(0.2, 1.6);
            pos.y += 74.0;
            pos *= 0.8;
        } else if (sectionx == 15) {
            posoffset = vec2(0.5, 1.0);
            pos.y += 91.0;
            pos *= 0.5;
        } else if (sectionx == 16) {
            posoffset = vec2(0.35, 1.30);
            pos.y += 94.0;
            pos *= 0.65;
        } else if (sectionx == 17) {
            posoffset = vec2(-1.1, 4.2);
            pos.y += 73.0;
            pos *= 2.1;
        } else if (sectionx == 18) {
            posoffset = vec2(-0.18, 2.36);
            pos.y += 74.2;
            pos *= 1.18;
        } else if (sectionx == 19) {
            posoffset = vec2(0.19, 1.62);
            pos.y += 89.0;
            pos *= 0.81;
        } else if (sectionx == 20) {
            posoffset = vec2(0.0, 0.0);
            pos.y += 0.0;
        } else if (sectionx == 21) {
            posoffset = vec2(-0.6, 1.2);
            pos.y += 15.0;
            pos *= 1.6;
        } else if (sectionx == 22) {
            posoffset = vec2(0.4, 1.2);
            pos.y += 101.0;
            pos *= 0.6;
        } else {
            posoffset = vec2(0.0, 0.0);
        }
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
    gl_Position.xy += gl_Position.w * posoffset;

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);
    vertexColor = Color * sample_lightmap(Sampler2, UV2);
#else
    vertexColor = Color;
#endif
    texCoord0 = UV0;
}
