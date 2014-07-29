\header {
 title = "Nyan Cat" 
 composer = "Daniwell" 
}
\include "macros.ily"
melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4
	e'8 f g4 c e,8 f |
	g c d e d b c4 |
	g e8 f g4 c |
	d8 b c d f e f d |
    \break
	\repeat volta 2 {
		g,4 a dis,8 e4 c8 |
		ees d c4 c d |
		ees e8 d c d e g |
		a e g d e c d c |
		\break
		e4 g a8 e g d |	
		e c ees fes e d c d |
		ees4 c8 d e g d e |
		d c d4 c d |
		\break 
		c g8 a c4 g8 a |	
		c d e c f e f g |	
		c,4 c g8 a c g |
		f' e d c g e f g |
		\break
		c4 g8 a c4 g8 a |	
		c c d e c g a g |
		c4 c8 b c g a c |
	}
	\alternative {
		{f e f g c,4 b |}
		{f'8 e f g c,4 d |}
	}
	\break
 
   
}

harmonies = \chordmode {
	r1 s s s 
	f2:6 g c:m6 a:m7 d:7.9- g:7 c c:7/e
	f:6 g c:m6 a:m7 d:7.9- g:7 c4 d:m dis:dim7 e:m7
	f1 a:m7/e d:m7 c2 c:7
	f1 a:m7/e d:m7 c4 d:m c:/e e:7 c d:m dis:dim7 e:m7
}
\include "template.ily"