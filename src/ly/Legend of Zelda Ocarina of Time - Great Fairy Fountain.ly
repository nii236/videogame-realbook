\header {
	title = "Legend of Zelda: Ocarina of Time"
	subtitle = "Great Fairy Fountain" 
	composer = "Koji Kondo" 
}

melody = \relative c' {
	\clef treble
	\key f \major
	\time 4/4
	\times 2/3 {d4 e g} \times 2/3 {bes d e} |
	\repeat volta 2 {
		a16 d bes g g d bes g fis d bes g |
		g c a f f c a f e c a f f c a f |
		\break
		f bes g e e bes g e dis bes g e e bes g e |
		e a f d d a f d cis a f d d c f d |
		a d bes g g d bes g fis d bes g g d bes g |
		\break
		bes ees c fis a e c f gis e c f a e c f |
		c d bes g bes d bes g a d bes g bes d bes g |
		a bes g e g bes g e f bes g e g bes g e|
	}
}

harmonies = \chordmode {
	c1:9 g:m9/bes f:maj9/a |
	e:m.5-.9-/g d:m9 g:m9/bes |
	a2:m.5-.6+ d:7.9- g1:m c:7
}
