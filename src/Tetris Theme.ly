\header {
 title = "Tetris Theme" 
 subtitle = "" 
 composer = "Unknown" 
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
	\key c \major
	\time 4/4
\repeat volta 2 {  
	% Melody here
	\autoBeamOn
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

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
 % Chord changes here
e1:7 a:m e:7 a2:m a:7
d1:m a:m e:7 a:m
a:m e:7 a:m e:7
a:m e:7 a:m e:7
e:7 a:m e:7 a2:m a:7
d1:m a:m e:7 a:m
}
\score {
 <<
 \new ChordNames {
 \set chordChanges = ##t
 \harmonies
 }
 \new Voice = "one" { \autoBeamOn \melody }
 \new Lyrics \lyricsto "one" \text
 >>
	\layout {
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-permission = ##f
			\override NonMusicalPaperColumn #'page-break-permission = ##f
		}

	}
 \midi { }
}