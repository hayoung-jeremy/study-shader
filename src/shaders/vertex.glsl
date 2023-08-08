attribute vec3 position;
uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;

uniform float uTime;

void main() {
	// MVP : Model View Projection
	vec4 modelViewPosition = modelViewMatrix * vec4( position, 1.0 );
	vec4 projectedPosition = projectionMatrix * modelViewPosition;
	gl_Position = projectedPosition;
}