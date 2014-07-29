\header {
	title = "Metroid" 
	subtitle = "Brinstar" 
}

\include "macros.ily"

melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4
	b1 |
	c |
	b |
	c |
	\break
	g' |
	bes2. a16 bes a f |
	g1 |
	bes2. a16 bes a f |
	\break
	g1 |
	bes2. a16 bes a f |
	g1 |
	g1 |
	\break
	c |
	bes2. a16 bes a f |
	c'2. g4 |
	bes2. a16 bes a f |
	\break	
	c'1 |
	bes2. a16 bes a f |
	g1 |
	e1 |	
	\break
	a2. \times 2/3 {a8 g a} |
	bes2 f4 \times 2/3 { c8 f g } |
	a2. \times 2/3 { a8 g a } |
	bes2 f4 \times 2/3 {f8 bes c}
	\break
	d1 |
	c2 b |
	c2. \times 2/3 	{ees8 d c}
	\break
	d2 bes4 \times 2/3 {bes8 d f} |
	fis1 |
	fis \bar "|."|
}

harmonies = \chordmode {
	g1 bes g bes
	g bes g bes
	g bes g bes 
	c bes:/c c bes:/c
	c bes:/c c s 
	f:/ees bes:/d f:/ees bes:/d
	g s aes
	ees:maj9 d:/a s
}

\include "template.ily"