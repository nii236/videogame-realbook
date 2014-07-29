\header {
	title = "Pokemon Red/Blue/Yellow"
	subtitle = "Intro 2" 
}

\paper {
line-width = 15\cm
indent = 0\cm
}


melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4
	\partial 16*4 g16 b d fis| 
	g4 g r8 g16 g g4 |
	g4 g \times 2/3 {f8 f f} \times 2/3 {f f fis} |
	\repeat volta 2 {
		g4. b8 d2~ |
		\break
		d4. f8 f4. e16 ees |
		d1 |
		r2 \times 2/3 {c4 b c} |
		\break
		g4. b8 d2~ |
		d2 \times 2/3{c4 b c} |
		d2 \times 2/3{f4 e c} |
		d2 \times 2/3 {c4 b c} |
		\break
		g4. b8 d2~ |
		d4. f8 f4. e16 ees |
		d1 |
		r2 \times 2/3 {c4 b c} |		
		\break
		g4. b8 d2~ |
		d2 \times 2/3 {f4 e f} |
		g4. bes8 g2~ |
		g2 a |
		\break
		bes4. f8 f2~ |
		f2 b4 b |
		c4. g8 g2 ~ |
		g2 c4 cis |
		\break
		d8. d16 r8. d16 r8. d16 r8. d16 |
		r8. d16 r8. d16 \times 2/3 {c4 c cis} |
		d8. d16 r8. d16 r8. d16 r8. d16 |
		r8. d16 r8. d16 \times {c4 c b}
	}

}


harmonies = \chordmode {
	s4 g1 s2 f2 g1
	f1 g s
	g1 f g s
	g1 f g s
	g1 f g s
	bes1 s2. b4:dim c1 s2. cis4:dim
	d1 s2 c4 cis:dim d1 s2 c4 g
}
\score {
	<<
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new Voice = "one" { \melody }
	\new Lyrics \lyricsto "one" \text
	>>
	\layout { 
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-permission = ##f
			\override NonMusicalPaperColumn #'page-break-permission = ##f
		}
	}
	\midi {

	}
}