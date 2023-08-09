uniform float uRadius;

varying vec3 vPosition;
varying vec3 vNormal;
varying vec2 vUv;

void main() {
	vec2 uv = vUv;
	uv -= vec2(0.5);
	uv *= 2.0;

	vec3 vectorA = vec3(1.0);
	vec3 vectorB = vec3(0.0);

	float dotProduct = dot(vectorA, vectorB);
	// vectorA.x * vectorB.x + vectorA.y * vectorB.y + vectorA.z * vectorB.z

	gl_FragColor = vec4(vec3(dotProduct), 1.0);
}