*Etoys-support
showAllPlayers

	| a |
	a := OrderedCollection new.
	self allMorphsDo: [ :x | 
		(x player notNil and: [x player hasUserDefinedScripts]) ifTrue: [a add: x]
	].
	a do: [ :each | each openViewerForArgument].
