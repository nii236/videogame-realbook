\header {
	title = "Animal Crossing: Wild World" 
	subtitle = "2:00AM" 
}

\include "macros.ily"

melody = \relative c'' {
	\clef treble
	\key a \major
	\time 3/4
 
	\autoBeamOn
	r4 cis2 | r4 b2 | r4 cis2 | r4 b2 \break
	cis8 e~e2 | d8 b~b2 | cis4 a cis | b2. | \break
	a4 b cis | gis'2 a4 | e2. ~ e2.\break
	fis4 gis a | gis2. | e4 fis gis | fis2. \break
	fis,4 a cis | e2 gis,4 | a2.~a2. \break
	a4 a a | a gis fis | gis2. |  gis \break
	gis4 gis gis | gis fis e | fis2. | fis2. \bar "||"
}

harmonies = \chordmode {
	a2.:maj7 g:maj7 a:maj7 g:maj7 |
	a2.:maj7 g:maj7 a:maj7 g:maj7 |
	fis2.:m7 b:7 e:7sus4 e:7 |
	d2.:maj7 cis:maj7 cis:m7 fis:7|
	b2.:m7 e:7 a:dim a |
	fis2.:m7 b:7 e:maj7 e:6 |
	cis2.:m fis:7 b:m9 e:7sus4
}
\include "template.ily"
