"
One post in the TinyBlog project

    Instance Variables
	category:		name of the category of the post
	date:		date of writing
	text:		post text
	title:		post title
	visible:		is the post publicly visible or not?


    Implementation Points
"
Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #testing }
TBPost class >> isAbstract [
		
	^ self == TBPost
]

{ #category : #creating }
TBPost class >> title: aTitle text: aText [
	^ self new
		title: aTitle;
		text: aText;
		yourself
]

{ #category : #creating }
TBPost class >> title: aTitle text: aText category: aCategory [
	^ self new
		title: aTitle;
		text: aText;
		category: aCategory;
		yourself
]

{ #category : #API }
TBPost class >> unclassifiedTag [
	^ 'Unclassified'
]

{ #category : #API }
TBPost >> beVisible [
	self visible: true
]

{ #category : #accessing }
TBPost >> category [
	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
TBPost >> date [
	^ date
]

{ #category : #accessing }
TBPost >> date: aDate [
	date := aDate
]

{ #category : #initialization }
TBPost >> initialize [
	super initialize.
	self category: self class unclassifiedTag.
	self date: Date today.
	self notVisible.
]

{ #category : #testing }
TBPost >> isUnclassified [
	^ self category = self class unclassifiedTag 
]

{ #category : #testing }
TBPost >> isVisible [
	^ self visible
]

{ #category : #API }
TBPost >> notVisible [
	self visible: false
]

{ #category : #accessing }
TBPost >> text [
	^ text
]

{ #category : #accessing }
TBPost >> text: aString [
	text := aString
]

{ #category : #accessing }
TBPost >> title [
	^ title
]

{ #category : #accessing }
TBPost >> title: aString [
	title := aString
]

{ #category : #accessing }
TBPost >> visible [
	^ visible
]

{ #category : #accessing }
TBPost >> visible: aBoolean [
	visible := aBoolean
]
