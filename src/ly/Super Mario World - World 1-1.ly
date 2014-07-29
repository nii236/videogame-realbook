\header {
	title = "Super Mario World" 
	subtitle = "World 1-1" 
	composer = "Koji Kondo" 
}

\include "macros.ily"

melody = \relative c'' {
	\clef treble
	\key f \major
	\time 4/4
 
	d2 bes4. f8 | 
	e4 f8 g ~ g2 \bar "||"| 
	\comp #4 \comp #4 \comp #8 \bar "||" 
	\break|
	\bar "| :" a2 f4. c8 d f4 f8 ~ f4. d8 c4 f f c' a4. g8 ~ g2| 
	\break
	a2 f4. c8 d f4 f8 ~f4. d8 c4 f4 bes8 a g f( e1) \bar ":|"|
	\break
    a4. f8~f4 c |
    a'4. f8~f2 |
    aes8 f c4 aes'4. g8~g1
    \break
    a4. f8~f4 c |
    a'4. f8~f2 |
    aes8 f c4 c'2~c1
    \break
    a2 f4. c8 d f4 f8~f4. g8 a f c4 d4. f8~f2. r8 c8 
    \break
    c'4 d c d c r8 c,8 bes' a g4 f1 r1 \bar "||"
    \break
	 
	f8 d4 f8~f4 g |
	a8 aes g ges~g2 |
	f8 d4 f8~f4 g a1 
	\break
	f8 d4 f8~f4 g | a8 bes c d~d2 | f8 d4 f8~f4 g f1
	\break
	\comp #16
}

harmonies = \chordmode {
	bes1 c2 c:7 f2 d:m g:m7 c:7.9- f d:m g:m7 ges:maj7 |
	f a:m bes b:m7.5- a:m aes:maj7 g:m7 c:7
	f a:m bes b:m7.5- g:m7 c4:7 f s1|
	bes:maj7 f aes g:7|
	bes:maj7 f aes g2:7 g:m7|
	f1 f:7/ees bes:/d ges:/des|
	c2 s2 s2 c:7 f1 s1|
	bes2 b:m7.5- c d:7 g:m7 c:7 f f:7|
	bes2 b:m7.5- c d:7 g:m7 c:7 f1|
	f2 d:m g:m7 c:7.9- f d:m g:m7 ges:maj7
}

\include "template.ily"