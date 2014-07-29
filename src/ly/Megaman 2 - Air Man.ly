\header {
  title = "Megaman II"
  subtitle = "Airman"
}

\include "macros.ily"
melody = \relative c'' {
	\clef treble
	\time 4/4
	\key ees \major
	g4 bes8 a r8 aes r8 g |
	r8 bes r8 a r8 aes4.|
	g2 g8 f ees d ~|
	d ees f bes, ~bes c d c |
	\break
	r4 bes'8 a r8 aes r8 g |
	r8 bes r8 a r8 aes4.|
	g2 g8 f ees d ~ d ees f bes, ~bes	 c d c |
	\break
	r8 c d c ees c f c |
	d' d d d d8(ees8) r c~|
	c4. g8 bes c r c |
	r c r g bes4 b |
	\break
	c4. bes8 ~ bes c4.|
	g'2 c,8 b4 bes8 ~ |
	bes4. f8 g bes r8 bes|
	r bes aes bes r d c bes |
	\break
	bes4. f8 ~ f8 g4.|
	r8 bes bes4 bes8 b r ees ~ |
	ees bes g c d c ees f16 fis|
	g8. bes16~bes f g bes c ees d c bes b c bes|
	\break
	g4. f8~f4 ees~ |
	ees8 d4. c4 bes |
	f4. bes8~bes4 f' ~|
	f4. d8~d8 des c bes |
	\break
	aes16 g aes  bes c bes c d ees d ees f g f g aes |
	c4 r ees,8 d4 c8 |
	r8 c c bes c4 r |
	c8 r c bes c ees r g |  
	\break
	r8 f4. r4 r8 bes~ |
	bes4 aes g f8 c |
	r8 c c bes c4 r |
	\break
	c8 r c bes c ees r g |
	r f4. f8 d r g~ |
	g2 g,8 ees4 f8 \bar "|."
}

harmonies = \chordmode {
	c1:m7 s aes:maj7 g:m7 
	c:m7 s aes:maj7 g:m7
	s g:7.5+.9- c:m7 s
	s s bes:7 s
	s s c:m7 s
	s s bes:7 s
	s s aes:maj7 s
	bes:7 s aes:maj7
	s bes:7 g:7.5+.9-
}

\include "template.ily"