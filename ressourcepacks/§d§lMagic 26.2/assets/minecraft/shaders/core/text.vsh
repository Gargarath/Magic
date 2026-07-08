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
const float colorTolerance = 0.002;
const vec2 countdownPivot = vec2(0.0, 0.15);

bool is_color(vec3 color, vec3 expected) {
    return all(lessThan(abs(color - expected), vec3(colorTolerance)));
}

int countdown_color(vec3 color) {
    // Main glyph colors and the matching 25% title-shadow colors.
    if (is_color(color, vec3(1.0, 254.0, 2.0) / 255.0)) return 1;
    if (is_color(color, vec3(0.0, 63.0, 0.0) / 255.0)) return 4;
    if (is_color(color, vec3(254.0, 253.0, 1.0) / 255.0)) return 2;
    if (is_color(color, vec3(63.0, 63.0, 0.0) / 255.0)) return 5;
    if (is_color(color, vec3(253.0, 1.0, 2.0) / 255.0)) return 3;
    if (is_color(color, vec3(63.0, 0.0, 0.0) / 255.0)) return 6;
    return 0;
}

vec3 displayed_countdown_color(int colorId) {
    if (colorId == 1) return vec3(0.0, 170.0, 0.0) / 255.0;
    if (colorId == 4) return vec3(0.0, 42.0, 0.0) / 255.0;
    if (colorId == 2) return vec3(255.0, 255.0, 85.0) / 255.0;
    if (colorId == 5) return vec3(63.0, 63.0, 21.0) / 255.0;
    if (colorId == 3) return vec3(170.0, 0.0, 0.0) / 255.0;
    return vec3(42.0, 0.0, 0.0) / 255.0;
}

void main() {
    vec3 pos = Position;
    vec2 posoffset = vec2(0.0);
    int countdownColor = 0;
    bool isOrthographic = is_orthographic();
    int sectionx = 0;
    int sectiony = 0;
    bool isMagicSection = false;

    if (isOrthographic) {
        sectionx = int(round(pos.x / period));
        sectiony = int(round(pos.y / period));
        isMagicSection = sectionx != 0 || sectiony != 0;
    }

    if (isOrthographic && isMagicSection) {
        countdownColor = countdown_color(Color.rgb);
    }

    if (isOrthographic && isMagicSection) {
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
            pos.y += 92.0;
            pos *= 0.6;
        } else if (sectiony == 23 && sectionx >= 24 && sectionx <= 47) {
            int alertState = sectionx - 24;
            int alertRow = alertState / 8;
            int alertPhase = alertState - alertRow * 8;
            float progress = float(alertPhase) / 7.0;
            progress = progress * progress * (3.0 - 2.0 * progress);

            posoffset = vec2(mix(-1.35, -1.0, progress), 2.5);
            pos.y += 93.0 + float(alertRow) * 12.0;
        } else if (sectiony == 23 && sectionx == 48) {
            float moneyScale = 1.3;
            posoffset = vec2(-1.3, 3.2);
            pos.y += (95.0 - 12.0) / moneyScale;
            pos *= moneyScale;
        } else if (sectiony == 23) {
            posoffset = vec2(-1.0, 2.5);
            pos.y += 93.0;
        } else {
            posoffset = vec2(0.0, 0.0);
        }
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);
    gl_Position.xy += gl_Position.w * posoffset;

    if (countdownColor != 0) {
        // The title fade alpha drives the old text_display scale animation.
        float countdownScale = clamp(Color.a, 0.0, 1.0) * 2.0;
        vec2 pivot = countdownPivot * gl_Position.w;
        gl_Position.xy = pivot + (gl_Position.xy - pivot) * countdownScale;
    }

#if !defined(IS_GUI) && !defined(IS_SEE_THROUGH)
    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);
    vertexColor = Color * sample_lightmap(Sampler2, UV2);
#else
    vertexColor = Color;
#endif

    if (countdownColor != 0) {
        vertexColor.rgb = displayed_countdown_color(countdownColor);
        // Scale alone handles appearing/disappearing, as with the old display.
        vertexColor.a = Color.a > 0.0 ? 1.0 : 0.0;
    }
    texCoord0 = UV0;
}
