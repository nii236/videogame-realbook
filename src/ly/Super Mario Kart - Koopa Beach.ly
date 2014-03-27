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
	\key c \major
	\time 4/4

	% Melody here
	\autoBeamOn
	% \tempo 4 = 130
	\partial 3 {r16 e8 f g d4 c16 g} |
	
	\repeat volta 2{
		f1~|
		f4 d8 e f c4 b16 g |
		a4. g16 f e2~ |
		e4 e8 f g bes4 a16 e |
		\break
		g4. f16 e f2~ |
		f4. f8 g a b4 c8 |
		e4 d b a8 g |
		g4 e8 f g d4 c16 g |
		\break
		f1~ |
		f4 d8 e f c4 b16 g |
		a4. g16 f e2~ |
		e4 g f e |
		\break
		e4 d des8 d r8 g |
		r8 g f4 e d |
		f e ees e8 b |
		r4 aes8 a bes f4 e16 des |
		e4. d8 d4. c8 |
		c4 b a b |
		c4. c8 c4. c8 |
		c4 e8 f g d4 e16 g 
	}

}

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
	% % Chord changes here
	s4 s s |
	d1:m g c a:7.9- |
	d:m d:7 g s |
	d:m g bes a:7.9- |
	d:m f:m e:m a:7.9- |
	d:m g:7 a2:m d:m g1 
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