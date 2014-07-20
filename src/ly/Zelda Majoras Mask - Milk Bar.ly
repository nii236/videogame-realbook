\header {
	title = "Zelda: Majora's Mask" 
	subtitle = "Milk Bar Theme" 
}

melody = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4

	r4 ees g8 a bes a~|
	a4 a8 g a g f4 ~ |
	f d8 c d f4 g8~|
	g4. d8~d2 |
	\break
	r4 ees g8 a bes a~|
	a4 a8 g a g f4 ~ |
	f bes2. |
	r1
	\break
	r4 ees, g8 a bes a~|
	a4 a8 g a g f4 ~ |
	f4 d8 c d f4 g8~ |
	g4. d8~d2|
	\break
	r4 ees g8 a bes a~|
	a4 a8 g a g f4 ~ |
	bes4. a8 a4 bes~|
	\time 6/4 bes8 a a4 bes bes c cis
	\break
	\repeat volta 2 {
		\time 4/4 d4. a8 a d r d~|
		d4 d8 c bes a4 bes8~|
		bes1~ |
		bes4 g a bes|
		\break
		c4. g8 g c r c~|
		c4 c8 bes a g4 a8~|
		a1|
		a4 bes c cis |
		\break
		d4. a8 a d r d~|
		d4 d8 c bes a4 bes8~|
		bes2 c|
		d1|
		\break
		ees4. ees8 ees d c a~|
		a2 a8 bes c d~|
		d1|
		r1
	}
}

harmonies = \chordmode {
	ees1 f bes g:7
	ees f bes g2:7sus4 g:7
	ees1 f bes g:7
	ees f bes4. f4. bes4.
	f4. bes1
	d1:7 s g:m s 
	c:7 s f s 
	d:7 s g:m 
	c:m7 f bes g:7
}
