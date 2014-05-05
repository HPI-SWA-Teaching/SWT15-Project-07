scrolling
scrollRowProcess: aNumber 
	"This is the main method running in a process forked in startScrollingRow:.
	It's intend is to let the text in the given row scroll.'"
	| displayString expandedText pasteText |
	
	"displayString - the final output string that I'll give the device to display
	 expandedText - a string where the text and the seperator will be copied into until it is large enough to extract the displayString from it.
	 pasteText      - a (never empty) string, that contains the text and the seperator."
	
	[ (self rowIsInRange: aNumber) and: [running at: aNumber] ] whileTrue: [
		"If the given row is not in the range of the given device, stop here."
		
		"calculates the text to display and display it"
		pasteText := self pasteTextFromRow: aNumber.
		expandedText := self expandString: pasteText toMinLength: scrollPosition + self columns.
		displayString := self getValidStringFrom: (expandedText copyFrom: scrollPosition to: expandedText size).
		self displayStringWithoutCaching: displayString	inRow: aNumber.
		"calculate the new scrollPosition"
		scrollPosition := scrollPosition + 1.
		(scrollPosition > ((text at: aNumber) size + seperator size)) ifTrue: [ self resetScrollPosition ].
		"wait for <waitTime> milliseconds so that the scroll doesn't look too fast"
		(Delay forMilliseconds: self waitTime) wait ].