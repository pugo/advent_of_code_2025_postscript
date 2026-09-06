Class {
	#name : 'Grid',
	#superclass : 'Object',
	#instVars : [
		'grid',
		'width',
		'height'
	],
	#category : 'AOC-Days',
	#package : 'AOC',
	#tag : 'Days'
}

{ #category : 'accessing' }
Grid class >> from: data [

	^ self new
		initializeFrom: data
		  yourself.
]

{ #category : 'running' }
Grid >> charAtPos: pos [

   ^ (grid at: (pos y)) at: (pos x)
]

{ #category : 'running' }
Grid >> charAtPos: pos set: newChar [

   (grid at: (pos y)) at: (pos x) put: newChar.
	
]

{ #category : 'initialization' }
Grid >> countChar: chr [
	| result |
	
	result := 0.
	
	grid do: [ :line |
		line do: [ :c | c = chr ifTrue: [ result := result + 1 ] ]
	 ].

   ^ result.
]

{ #category : 'initialization' }
Grid >> grid [
	^ grid
]

{ #category : 'initialization' }
Grid >> height [
	^ height
]

{ #category : 'initialization' }
Grid >> initializeFrom: data [

   grid := data.
	height := grid size.
	width := grid first size.
	
]

{ #category : 'running' }
Grid >> posIsInside: pos [
	"Return true if pos is inside the grid."
	
	^ ((pos x > 0) & (pos x <= width) & (pos y > 0) & (pos y <= height))

]

{ #category : 'initialization' }
Grid >> printGrid [

	grid do: [ :line | 
		line do: [ :c |
			Transcript show: c.
		].
		Transcript cr.
	].
]

{ #category : 'initialization' }
Grid >> width [
	^ width
]
