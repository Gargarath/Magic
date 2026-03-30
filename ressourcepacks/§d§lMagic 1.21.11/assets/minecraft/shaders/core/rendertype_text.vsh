#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:sample_lightmap.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
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
        // Which "band" are we in? (…,-2,-1,0,1,2,…)
        int sectionx = int(round(pos.x / period));
        int sectiony = int(round(pos.y / period));

        // Fold position back into the base band so it renders normally
        pos.x -= period * float(sectionx);
        pos.y -= period * float(sectiony);

        // Pick a screen-edge offset per section
        // Right edge:  ( 1, 0)
        // Left edge:   (-1, 0)
        // Top right edge:    ( 1, 2)
        // Bottom left edge: ( -1,-2)
        // Center:      ( 0, 0)
        if (sectiony == 1) {
            // e.g., ascent near -10000 → push to bottom right edge
            posoffset = vec2(1.1, -0.2);
             pos *= 0.9;
        } else if (sectiony == 2) {
            // e.g., ascent near -20000 → push to bottom left edge
            posoffset = vec2(-0.85, -0.3 );
                     pos *= 0.85;
        } else if (sectiony == 3) {
            // e.g., ascent near -30000 → actionbar scnd bar
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 4) {
            // e.g., ascent near -40000 → actionbar scnd bar score
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 5) {
            // e.g., ascent near -50000 → actionbar right
            posoffset = vec2(0.0, 0.0);
        } else if (sectiony == 6) {
            // e.g., ascent near -60000 → mid right
            posoffset = vec2(1.0, 1.0);
        } else if (sectiony == 7) {
            // e.g., ascent near -70000 → top left head
            posoffset = vec2(-0.8, 1.6);
          pos *= 0.8;
        } else if (sectionx == 7) {
            // e.g., ascent near -70000 → top_left head X
            posoffset = vec2(-1.6, 3.2);
            pos.y += 73.0;
            pos *= 1.6;
        } else if (sectionx == 8) {
            // e.g., ascent near -80000 → top_left head X
            posoffset = vec2(-1.6, 3.2);
            pos.y += 93.0;
            pos *= 1.6;
        }
        else if (sectiony == 8) {
            // e.g., ascent near -80000 → top left class
            posoffset = vec2(-0.416, 0.832);
            pos *= 0.416;
        } else if (sectiony == 10) {
            // e.g., ascent near -100000 → top right
            posoffset = vec2(1.2, 1.6);
            pos *= 0.8;             
        } else if (sectiony == 11) {
            // e.g., ascent near -120000 → top right class
            posoffset = vec2(1.584, 0.832);  
            pos *= 0.416;
        } else if (sectionx == 10) {
            // e.g., ascent near -100000 → top_bar background
            posoffset = vec2(-0.3, 2.6);
            pos.y += 71.0;
            pos *= 1.3;   
        } else if (sectionx == 11) {
            // e.g., ascent near -100000 → top_bar timer
            posoffset = vec2(0.2, 1.6);
            pos.y += 74.0;
            pos *= 0.8;   
        } else if (sectionx == 12) {
            // e.g., ascent near -120000 → top_bar round
            posoffset = vec2(0.5, 1.0);
            pos.y += 91.0;
            pos *= 0.5;   
        } else if (sectionx == 13) {
            // e.g., ascent near -130000 → top_bar map
            posoffset = vec2(0.5, 1.0);
            pos.y += 102.0;
            pos *= 0.5;   
        } else if (sectionx == 14) {
            // e.g., ascent near -140000 → top_bar score
            posoffset = vec2(0.2, 1.6);
            pos.y += 74.0;
            pos *= 0.8;   
        } else if (sectionx == 15) {
            // e.g., ascent near -150000 → top_bar objective
            posoffset = vec2(0.5, 1.0);
            pos.y += 91.0;
            pos *= 0.5;   
        } else if (sectionx == 16) {
            // e.g., ascent near -160000 → top_bar flag
            posoffset = vec2(0.35, 1.30);
            pos.y += 94.0;
            pos *= 0.65;   
        } else if (sectionx == 17) {
            // e.g., ascent near -170000 → top_bar heads
            posoffset = vec2(-1.1, 4.2);
            pos.y += 73.0;
            pos *= 2.1; 
        } else if (sectionx == 18) {
            // e.g., ascent near -180000 → top_bar overlay
            posoffset = vec2(-0.18, 2.36);
            pos.y += 74.2;
            pos *= 1.18; 
        }  else if (sectionx == 19) {
            // e.g., ascent near -190000 → top_bar class
            posoffset = vec2(0.19, 1.62);
            pos.y += 89.0;
            pos *= 0.81;   
        }  else if (sectionx == 20) {
            // e.g., ascent near -200000 → actionbar
            posoffset = vec2(0.0, 0.0);
            pos.y += 0.0;  
        }  else if (sectionx == 21) {
            // e.g., ascent near -210000 → bellow crosshair
            posoffset = vec2(-0.6, 1.2);
            pos.y += 15.0;
            pos *= 1.6;     
        }
        else {
            // section == 0 or anything else → no offset
            posoffset = vec2(0.0, 0.0);
        }
    }

    gl_Position = ProjMat * ModelViewMat * vec4(pos, 1.0);

    // Move in clip space by "one screen width/height" per unit in posoffset.
    gl_Position.xy += gl_Position.w * posoffset;

    vertexColor = Color * sample_lightmap(Sampler2, UV2);
    sphericalVertexDistance = fog_spherical_distance(pos);
    cylindricalVertexDistance = fog_cylindrical_distance(pos);  
    texCoord0 = UV0;
}