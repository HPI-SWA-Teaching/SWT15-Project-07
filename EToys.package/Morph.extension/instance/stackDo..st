*Etoys-card in a stack
stackDo: aBlock
	"If the receiver has a stack, evaluate aBlock on its behalf"

	| aStack |
	(aStack := self ownerThatIsA: StackMorph) ifNotNil:
		[^ aBlock value: aStack]