\version "2.18.0"

\include "LilyJAZZ.ily"
\header {
	title = "Metroid" 
	subtitle = "Brinstar" 

}

\paper {
line-width = 15\cm
indent = 0\cm
}

melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4
        \jazzOn

	% Melody here
	\autoBeamOn
	% \tempo 4 = 130
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

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
	% % Chord changes here
	g1 bes g bes
	g bes g bes
	g bes g bes 
	c bes:/c c bes:/c
	c bes:/c c s 
	f:/ees bes:/d f:/ees bes:/d
	g s aes
	ees:maj9 d:/a s
}
\score {
	<<
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new Voice = "one" { \autoBeamOff \melody }
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