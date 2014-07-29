\header {
	title = "Mother 3"	
	subtitle = "Love Theme" 
	composer = "Shoko Sakai" 
}

\include "macros.ily"

melody = \relative c' {
	\clef treble
	\key d \major
	\time 4/4
	\repeat volta 2
	{
		a'4 d e fis |
		a,1 |
		fis4 b cis d |
		e1 |
		\break
		e4 e fis e |
		a fis d2 |
		b e4. fis8 |
		e1 |
		\break
		a,4 d e fis |
		a,1 |
		fis4 b cis d |
		e1 |
		\break
		e4 e fis e |
		a fis d2 |
		b2 e4. d8 |
		d1 |
		\break
		d2 b' |
		a1 |
		b,2 g' |
		fis1 |
		\break
		e2 fis4. e8 |
		e4 d cis d |
		b'2 b4. b8 |
		a1 |	
	}

}

harmonies = \chordmode {
	d1 fis:m7 b:m g:m 
	a2 a:7/g d:/fis d:m/f e:m e:m7/d a1:/cis
	d1 fis:m7 b:m e:m
	a2 a:7/g d:/fis d:m/f e:m7 a:7 d d:7 
	g1 d e2:m a:7 d1 
	fis:7 b:m7 e:m a:7
}

\include "template.ily"