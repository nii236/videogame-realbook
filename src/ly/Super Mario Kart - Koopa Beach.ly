\header {
	title = "Super Mario Kart" 
	subtitle = "Koopa Beach" 
}

\include "macros.ily"

melody = \relative c' {
	\clef treble
	\key c \major
	\time 4/4

	\partial 4*3 {e8 f g d'4 c16 g} |
	
	\repeat volta 2{
		f1~|
		f4 d8 e f c'4 b16 g |
		a4. g16 f e2~ |
		e4 e8 f g bes4 a16 e |
		\break
		g4. f16 e f2~ |
		f4 f8 g a b4 c8 |
		e4 d b a8 g |
		g4 e8 f g d'4 c16 g |
		\break
		f1~ |
		f4 d8 e f c'4 b16 g |
		a4. g16 f e2~ |
		e4 g f e |
		\break
		e4 d des8 d r8 g |
		r8 g f4 e d |
		f e ees e8 b' |
		r4 aes,8 a bes f'4 e16 des |
		\break
		e4. d8 d4. c8 |
		c4 b a b |
		c4. c8 c4. c8 |
		c4 e8 f g d'4 e16 g, 
	}

}

harmonies = \chordmode {
	s4 s s |
	d1:m g c a:7.9- |
	d:m d:7 g s |
	d:m g bes a:7.9- |
	d:m f:m e:m a:7.9- |
	d:m g:7 a2:m d:m g1 
}

\include "template.ily"