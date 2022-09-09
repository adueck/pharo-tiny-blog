Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #tests }
TBPostTest >> testPostBecomesVisible [
	| post |
		post := TBPost
			title: 'Sample Post to Publish'
			text: 'Lorem Ipsum'.
		1 to: 3 do: [ :each |
			self deny: post isVisible.
			post visible: true.
			self assert: post isVisible.
			post visible: false.
		].

		
]

{ #category : #tests }
TBPostTest >> testPostCanBeModified [
	| post |
		post := TBPost
			title: 'Sample Post to Publish'
			text: 'Lorem Ipsum'.
		post title: 'changed title'.
		self assert: post title equals: 'changed title'.
		post text: 'changed text'.
		self assert: post text equals: 'changed text'.
		post category: 'changed category'.
		self assert: post category equals: 'changed category'.


		
]

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [
	| post title text category |
	title := 'TinyBlog Post'.
	text := 'Post content'.
	category := 'TestPosts'.
	post := TBPost
		title: title
		text: text
		category: category.
	self assert: post title equals: title.
	self assert: post text equals: text.
	self assert: post category equals: category.
	self deny: post isUnclassified.
	self deny: post isVisible.
		
]

{ #category : #tests }
TBPostTest >> testWithoutCategoryIsUnclassified [
	| post title |
	title := 'TinyBlog Post'.
	post := TBPost
		title: title
		text: 'My blog content'.
	self assert: post title equals: title.
	self assert: post category equals: TBPost unclassifiedTag.
	self assert: post isUnclassified.
	self deny: post isVisible.
		
]
