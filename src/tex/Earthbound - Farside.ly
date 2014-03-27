\include "LilyJAZZ.ily"
\header {
	title = "Earthbound" 
	subtitle = "Farside" 
	composer = "" 
	arranger = ""
	piece = ""
	tagline = ""
}

\paper {
	line-width = 15\cm
	indent = 0\cm
}

melody = \relative c' {
	\clef treble
	\key g \major
	\time 4/4
        \jazzOn
	% Melody here
	\autoBeamOn
	% \tempo 4 = 130
	d'1~|
	d2 e2 c2. e4~|
	e2 d2 |
	b2. d4~ |
	d2 e2 |
	\break
	g2. a4~ |
	a2. r4 |
	d,,8 gis r c r ds r fis, |
	r g r g g4 r |
	\break
	\repeat volta 2 {
	d2 g |
	a2 b4 c |
	d2 d8 e r g~|
	g4 e d8 e r4 |
	\break
	g,4 g b2 |
	e fis |
	d1~ |
	d2. r8 b |
	\break
	c4 b a g |
	a2 b4 c |
	d c b d |
	gis,2 a4 b |
	\break
	c b a g |
	fis2 \times 2/3 {fis4 g a} |
	a4. g8~g2~ |
	g2. r4 |
	\break
	}
	
	\alternative {
		{
			r2 d'4 r8 e |
			e d d4 r2 |
			r2 g4 r |
			g8 g r4 r2 |
			\break
			r2 g4 r8 g |
			a g r g r2 |
		}
		{
			r2 d4 r8 e |
			e d r d~d2 |
		}
	}
	\break
	\key d \major
	d2 b |
	cis2 d4 e |
	d2 b |
	r8 d' r b~b2 |
	\break
	d,2 b2 |
	e4 e d cis |
	b2 g |
	gis a |
	\break
	fis' d |
	e4 e fis g |
	fis2 d~|
	d2. r4 |
	\break
	fis2 d |
	e4 e fis gis |
	a2. r4 |
	g2 c,2 |
	\break
	\key c \major
	r2 g |
	g8 g r g~g g4 r8 |
	r2 g |
	g8 g r g~g4 g |
	\break
	r2 g |
	g8 g r g~g4 g |
	r2 g |
	f g \bar "|."
}

harmonies = \chordmode {
	g1:9 s c:6 s g:9
	c:6.9 s s a:m7/d 
	g:9 f:9 g:9 f
	e:m a d s 
	a:m d:7 b:m e:7.9-
	a:m d:7 g:9 f:9 
	g:9 f:9 g:9 f:9
	g:9 f:9 g:9 f:9

	b:m fs b:m s 
	b:m fs b:m s
	d a d s
	s e:7 a a:7
	g:9/f s s s
	s s s ef2 d:7sus
}
\score {
	<<
	\new ChordNames {
		\set chordChanges = ##t
		\harmonies
	}
	\new Voice = "one" { 
		\melody 
	}
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