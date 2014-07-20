\header {
	title = "Starfox"
	subtitle = "Corneria" 
	composer = "Hajime Hirasawa" 
}

melody = \relative c' {
	\clef treble
	\key bes \major
	\time 4/4
	g8 d g g g g d g |
	g d g bes a f g f |
	g d g g g g d g |
	g d g bes a f d f |
	\break
	\repeat volta 2 {
		g4 g~g8 g4. |
		g2 g8 a r bes |
		ees4 ees~ees8 ees4. |
		f4 f~f8 f f4 |
		\break
		g g~g8 g4. |
		g2 g8 a r bes |
		ees4 ees~ees8 ees4. |
		f4 f~f8 f f4 |
		\break
		r8 g d g c g bes g |
		a bes16 a g8 a~a f g a |
		c4 bes8 a r a bes c |
		c4 d8 d r4 d4 |
		\break
		ees4 bes8 bes r4 ees |
		f c8 c r4 f |
		ges des8 des r4 g |
	}
	\alternative 
	{
		{
			g8 d g aes ees aes a ees |
			\time 3/4 a8 bes f bes b16 c cis d
			\break
		}
	}
	\repeat volta 2
	{
		\time 4/4 
		g8 d c g d c b d |
		g g f4 f g8 g |
		f4 g8 g f4 f |
		\time 2/4
		g8 g g4
		\break
		\time 4/4 
		g8 d g g g g d g |
		g d g bes a f d f |
		g4 r r2 |
		r1
		\break
		r1 |
		a16 a a8 r e~e f4 fis8 |
		g4 r r2 |
		r1 |
		\break
		r1 |
		d4. des8~des c4 a8 |
		r1 |
		r1 |
		\break
		r1 |
		a16 a a8 r e~e f4 fis8 |
		g d g g g g d g |
		g d g bes a f d f |
	}
}

harmonies = \chordmode {
	g1:5 s s s
	g1:5 s ees:5 f:6 |
	g:6 s ees:5 f:6 |
	ees s d:m7 g:m7 |
	ees f ges g2 aes4 a bes2 b4 |
	g1:sus s s s |
	g:5 s s s |
	s s a:5 s |
	s s g:5 s |
	s s a:5 s |
	s s g:5 s
}
