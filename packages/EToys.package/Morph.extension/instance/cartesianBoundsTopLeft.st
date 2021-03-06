*Etoys-geometry
cartesianBoundsTopLeft
	"Answer the origin of this morph relative to it's container's cartesian origin. 
	NOTE: y DECREASES toward the bottom of the screen"

	| w container |

	w := self world ifNil: [^ bounds origin].
	container := self referencePlayfield ifNil: [w].
	^ (bounds left - container cartesianOrigin x) @
		(container cartesianOrigin y - bounds top)