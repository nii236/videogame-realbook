\header {
	title = "Ducktales" 
	subtitle = "The Moon" 
}

melody = \relative c' {
	\clef treble
	\key f \major
	\time 4/4

	f'16 f, c e g c f g bes c bes a c a g f |
	c2~c8 f g bes |
	bes4 a16 a8.~a4 g8 f |
	\break
	c4.  f4. f4~|
	f2. g8 f16 c~|
	c1
	\break
	
	\repeat volta 2{
		r4 a16 bes c c~c8 f e f  |
		g a16 f~f4 f4. e16 f |
		c8. f16 f8~f8. f16 f |
		f4~f16 g f e~e2 |
		\break
		a4~a16 g f c~c4 f8 g |
		bes8. a16 a2 c8 bes |
		a16 bes a f~f c8.~c16 g f e d e8. |
		f8. f8. f8 r2 |
		\break
		\key aes /major
		f16 f r8 g16 g8 ees16~ ees ees8 c16~c ees bes \times 2/3 {c32 bes aes} |
		bes8 aes16 bes r aes8 c16~c2 |
		f16 f r8 g16 g8 aes16~aes ees8 ees16~ees ees aes bes~ |
		bes4. aes16 c~c4~c16 c c c |
		f f c f g c f g bes c bes a c a g f 		
	}

}

harmonies = \chordmode {
	s1 f f:/ees
	bes:maj7/d bes:m7/des f
	f2 a:m/e d:m f:/e bes g:b c1 |
	f2 f:7/ees bes/d bes:m/des c g4:/b c des ees f s |
	bes:m7 ees aes s bes2:m c bes4:m ees:7 aes s |
	bes2:m c |
	des4:maj7 s s ees
}
