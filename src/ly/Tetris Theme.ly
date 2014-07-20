\header {
	title = "Tetris" 
	subtitle = "Theme" 
}

melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4
	\repeat volta 2 {  
	    e' b8 c d e16 f c8 b |
		a4 a8 c e4 d8 c |
		b4 b8 c d4 e |
		c4 a a2 |
		\break
		r8 d4 f8 a4 g8 f |
		e4. c8 e4 d8 c |
		b4 b8 c d4 e |
		c a a2 |
	}
	\break
	e'2 c |
	d b |
	c a |
	gis b |
	\break
	e c |
	d b |
	c4 e a2 |
	gis1
	\break
	e4 b8 c d  e16 d c8 b |
	a4 a8 c e4  d8 c |
	b4 b8 c d4 e |
	c4 a a2 |
	\break
	r8 d4 f8 a4 g8 f |
	e4. c8 e4 d8 c |
	b4 b8 c d4 e |
	c4 a a2 \bar "|."|
	\break
}

harmonies = \chordmode {
	e1:7 a:m e:7 a2:m a:7
	d1:m a:m e:7 a:m
	a:m e:7 a:m e:7
	a:m e:7 a:m e:7
	e:7 a:m e:7 a2:m a:7
	d1:m a:m e:7 a:m
}
