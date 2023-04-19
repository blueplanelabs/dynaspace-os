Class {
	#name : #BaselineOfDynaSpaceOS,
	#superclass : #BaselineOf,
	#category : #BaselineOfDynaSpaceOS
}

{ #category : #baseline }
BaselineOfDynaSpaceOS >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'DynaSpaceOS'
		]
]
