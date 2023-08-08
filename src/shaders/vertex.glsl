uniform float uTime;

varying vec3 vPosition;
varying vec3 vNormal;
flat varying vec2 vUv;

void main() {

	vPosition = position;
	vNormal = normal;
	vUv = uv;

	// MVP : Model View Projection
	vec4 modelViewPosition = modelViewMatrix * vec4( position, 1.0 );
	vec4 projectedPosition = projectionMatrix * modelViewPosition;
	gl_Position = projectedPosition;
}