\header {
	title = "Super Mario Kart" 
	subtitle = "Koopa Beach" 
	composer = "" 
	arranger = ""
	piece = ""
	tagline = ""
}

\paper {
line-width = 15\cm
indent = 0\cm
}
% Macro to print single slash
rs = {
  \once \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
  \once \override Rest #'thickness = #0.48
  \once \override Rest #'slope = #1.7
  r4
}

% Function to print a specified number of slashes
comp = #(define-music-function (parser location count) ( integer?)
  #{
    \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
    \override Rest #'thickness = #0.48
    \override Rest #'slope = #1.7
    \repeat unfold $count { r4 }
    \revert Rest #'stencil
  #}
)



melody = \relative c' {
	\clef treble
	\key f \major
	\time 4/4

	% Melody here
	\autoBeamOn
	% \tempo 4 = 130
	b1 |
	c |
	b |
	c |
	\break
	g |
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
	c2. g4 |
	bes2. a16 bes a f |
	\break	
	c1 |
	bes2. a16 bes a f |
	g1 |
	g1 |	
	\break
	a2. \times 2/3 {a8 g a} |
	bes2 f4 \times 2/3 { c f g } |
	a2. times 2/3 { a g a } |
	bes2 f4 \times 2/3 {f8 bes c}
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