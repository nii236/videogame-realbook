	\header {
	 title = "Super Mario 64" 
	 subtitle = "Ending" 
	 composer = "Koji Kondo" 
	}

\include "macros.ily"

	melody = \relative c' {
		\clef treble
		\key c \major
		\time 4/4

	\compressFullBarRests
	R1*1
	e2 r8 e \times 2/3 {f g4} |
	a2 r8 a \times 2/3 {g f4} |
	\break
	e2 r8 e \times 2/3 {f g4} |
	a2 r8 b \times 2/3 {c d4} |
	e,2 r8 e \times 2/3 {f g4} |
	a2 b8 b \times 2/3 {r b4} |
	\break
	\repeat volta 2 {
		e,4. e8 f e f g |
		e2 c4 e8 g |
		a4 a8 a b4 d8 c |
		g2. r4 |
		\break
		a4. a8 b4 d8 c |
	}
	\alternative {	
		{
			g2 c4 c,8 d |
			f4. g8 f e d c |
			g'1 |
			\break
		}
		{
			g2 c4 c8 d |
			f4 e b r8 c |
			c2 r2 |
		}
	}
	c4 r8 d r4 e |
	\break
	b4 r8 g r4 e |
	a r8 b r4 c |
	g r r2 |
	f4 r8 g r4 a |
	\break
	g4 r8 b r4 c |
	a r r c |
	d r r2 \bar "||"
	e,8 d e f g4 e8 d |
	\break
	d4. c8 c4 e8 g |
	a g a b c4 g8 f |
	e4 e8 f d2 |
	e8 d e f g4 e8 d |
	\break
	d4. c8 c4 e8 g |
	a g a b c4 g8 f |
	f e d c g'4 g, |
	\break
	\key des \major
	f'8 ees f ges aes4 f8 ees |
	ees4. des8 des4 f8 aes |
	bes aes bes c des4 aes 8 ges |
	f4 f8 ges ees2 |
	\break
	f8 ees f ges aes4 f8 ees |
	ees4. des8 des4 f8 aes |
	bes aes bes c des4 aes8 ges |
	ges f ees des aes'4 c, |
	\break
	f2 r8 f \times 2/3 {ges aes4} |
	bes2 r8 bes \times 2/3 {aes ges4} |
	f2 r8 f \times 2/3 {ges aes4} |
	bes2 r8 bes \times 2/3 {aes f4} |
	\break 
	f2 r8 f8 \times 2/3 {ges aes4} |
	bes2 des |
	des1 |
	r1 |
	
	   
}

harmonies = \chordmode {
    s1 c f |
	c f2 g c1 f2 g |
	c d:m e:m c f g c1 |
	f2 g e:m a:m bes1 d2:m g |
	e:m a:m d:m g c1 a:m |
	e:m f c d:m |
	e:m f g c2 e:m/b |
	a:m c:/g f c:/e d:m g c e:m/b |
	a:m c:/g f c:/e d:m g |
	des2 f:m/c bes des:/aes ges des:/f ees:m aes |
	des f:m/c bes:m des:/aes ges des:/f ees:m aes |
	des1 ges des ges |
	des ges2 ges:m des1 s1 
}


\include "template.ily"