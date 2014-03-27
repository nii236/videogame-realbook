\header {
	title = "Super Mario Galaxy" 
	subtitle = "Beach Bowl Galaxy" 
	composer = "Koji Kondo" 
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
	\key a \major
	\time 4/4

	% Melody here
	\autoBeamOn
	% \tempo 4 = 130
	g'1 |
	a2. r8 a16 cis \bar "||"
	e16 e8 e16 r e8 e16 r e8 e16 d8 cis |
	\break
	d8. b16 r4 r r8 g16 b |
	d16 d8 d16 r d8 d16 r d8 d16 cis8 b|
	cis8. e16 r4 r r8 a,16 cis |
	\break
	e16 e8 e16 r e8 e16 r e8 e16 d8 cis |
	d8. fis16 r4 r16 fis8 fis16 e8 d |
	cis e d16 cis8 b16 r b d8 cis b |
	b8. a16 r a8 a16 a4 r8 a16 cis |
	\break
	e16 e8 e16 r e8 e16 r e8 e16 d8 cis |
	d8. b16 r4 r r8 gis16 b |
	d d8 d16 r d8 d16 r d8 d16 cis8 b |
	cis8. e16 r4 r r8 a,16 cis |
	\break
	e16 e8 e16 r e8 e16 r e8 e16 d8 cis |
	d8. fis16 r4 r16 a8 a16 g8 f |
	e8 a gis16 fis8 e16 r e8 d16 cis8 b |
	b8. a16 r a8 a16 a a8. gis8 a
	\break
	fis'2 r16 a,8. gis8 a |
	e'2 r16 a,8. gis8 a |
	d4. cis8 d e16 fis r gis8. |
	a8. e16~e4 r16 a,8. cis8 e16 fis~ |
	\break 
	fis2 r8 b, b' gis |
	e8. a16 r8 cis r16 cis8. bis8 cis |
	d4 fis, a gis |
	a,16 a a8 r16 a8 a16 a a8. gis8 a |
	\break
	fis'2 r16 a,8. gis8 a |
	e'2 r16 a,8. gis8 a |
	d4. cis8 d e16 fis r gis8. |
	a8. e16~e4 r16 a,8. cis8 e16 fis~ |
	\break
	fis2 r8 b, b' gis |
	e8. a16 r8 cis r16 cis8. bis8 cis |
	d4 fis, a gis |
	e2~e8 e fis16 cis8. |
	\break 
	d4 e fis gis |
	a,16 a a8 r4 a16 a a8 r4 |
	a16 a a8 r16 a8 a16 a4 r4|

}

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
	% % Chord changes here
	a1 s a 
	e:7 s a:7
	s d a2:/e e:7 a1
	a1 e:7 s a 
	s2 a:7/g
	d:/fis d:m/f a:/e e:7 a1
	d a b2:m e:7 a1
	d2 e a4.:/cis fis2:m s8
	b2:m e a1
	d a b2:m e:7 a1
	d2 e a fis:m b:m e:7 fis1:7 
	b4:m cis:m d e a1 s1
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