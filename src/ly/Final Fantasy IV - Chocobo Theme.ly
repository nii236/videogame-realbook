\header {
    title = "Final Fantasy IV"
    subtitle = "Chocobo Theme"
	composer = "Nobuo Uematsu"
}

\include "macros.ily"

melody = \relative c {
    \clef treble
    \key g \major
    \time 4/4
	d4 b8 g e d b g |
	b4 g b4. a8 |
	g8 g16 a g8 f g4. f8 |
	g8 g16 b d8 e f2 |
	\break
	d4 b8 g e d b g |
	b4 g b4. a8 |
	g8 g16 a g8 f g4. f8 |
	g8 g16 b d8 e f2 |
	\break
	e4 c8 a fis a c e |
	d4 g b4. b8 |
	c4 a8 fis d g a c |
	b8 b16 c b8 a b2 |
	\break
	e4 c8 a fis a c e |
	d4 g d4. b8 |
	a8 a16 b a8 g a4. g8 |
	a8 a16 b c8 d e4 fis \bar "||"
}

harmonies = \chordmode {
	g2 f |
	g2 f |
	g2 f |
	g2 f |
	
	g2 f |
	g2 f |
	g2 f |
	g2 f |
	
	c2 d:7 |
	g2 e:m7 |
	a2:m d:7 |
	g2 g:7 |
	
	c2 d:7 |
	g2 e:m |
	f1 |
	d1:7
}
\include "template.ily"


