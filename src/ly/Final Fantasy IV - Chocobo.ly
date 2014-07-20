\header {
	title = "Final Fantasy 8" 
	subtitle = "Eyes on Me" 
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
	\repeat volta 2{
		\partial 8 g8 |
		c4 d e g8 e~|
		e2. r4|
		d8 e c4~c8 a4 c8 |
		d2. r8 g,8|
		\break
		c4 d e g |
		c2. r4|
		b8 c4 a8~c g a g |
		g2. r8 g|
		\break
		c4. c8 b4 a8 a~|
		a g4. r4 e8 g |
		a4. a8 g f c d |
	}
	\alternative {
		{
			e2. r8 e
			\break
			e8 d d e f4 e8 d|
			d c4. r4 a8 b |
			c2~c8 d e g|
			d2. r8 g,8
			\break
		}
		{
			e'2. r4|
			c4 d~d8 e f g~|
			g2 r8 g f c|
			e4. d8 d4. c8|
			c1|
			r2 c8. e16~e8 g \bar "||"
			\break
		}
	}
	b4. a8 a2~|
	a4 r4 a8.b16~b8 c|
	a4. g8 g2~|
	g4 r4 e8. f16~f8 g|
	\break
	g4. f8 f2~|
	f4 r f8. g16~g8 a8|
	a4. g8 g2~|
	g4 r c,8. e16~e8 g|
	\break
	b4. a8 a2~|
	a4 r a8. b16~b8 c|
	b4 g2 b8 a~|
	a2. g8 g|
	\break
	g8 f c' f, f4 r8 c16 d|
	e4. e8 r d c b~|
	b8 d~d2~d8 c|
	c1| \bar "|."
			


}

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
	% % Chord changes here
	\partial 8 s8
	c1 a:m7 f g2:sus4 g:7
	c1 e:m7 f g2:sus4 g:7
	a1:m7 e:m7 f c
	bes a:m f f2:m/aes g:7
	g2 d:m7/e c1:/e d:m7 g:7 c g2:m7 c
	f1 s c s 
	bes g:7 c g2:m7 c:7
	f1 s e:m7 a:7
	d:m7 d2:m7/g g:7 f1 c
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
