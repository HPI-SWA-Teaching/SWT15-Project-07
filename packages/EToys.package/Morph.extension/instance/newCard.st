*Etoys-card in a stack
newCard
	"Create a new card for the receiver and return it"

	| aNewInstance |
	self isStackBackground ifFalse: [^ Beeper beep].  "bulletproof against deconstruction"
	aNewInstance := self player class baseUniclass new.
	^ aNewInstance