Class {
	#name : #BaselineOfDynaSpaceOS,
	#superclass : #BaselineOf,
	#category : #BaselineOfDynaSpaceOS
}

{ #category : #accessing }
BaselineOfDynaSpaceOS class >> loadLepiter [ 
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'dynaspace-os' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfDynaSpaceOS >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'DynaSpaceOS'
		]
]
