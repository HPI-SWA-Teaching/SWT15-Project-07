*Etoys-viewing
toggleAutomaticViewing
	| current |
	current := self automaticViewing.
	current
		ifTrue:
			[self removeProperty: #automaticViewing]
		ifFalse:
			[self setProperty: #automaticViewing toValue: true]