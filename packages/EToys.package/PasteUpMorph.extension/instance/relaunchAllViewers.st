*Etoys-support
relaunchAllViewers
	"Relaunch all the viewers in the project"

	
	(self submorphs select: [:m | m isKindOf: ViewerFlapTab]) do: 
			[:aTab | | aViewer | 
			aViewer := aTab referent submorphs 
						detect: [:sm | sm isStandardViewer]
						ifNone: [nil].
			aViewer ifNotNil: [aViewer relaunchViewer]
			"ActiveWorld relaunchAllViewers"]