	\header {
	 title = "Super Mario Land" 
	 subtitle = "Birabuda Kingdom Theme" 
	 composer = "Hirokazu Tanaka" 
	 piece = "Swing 16ths"
	}

	% #(define ((my-stencils start) grob) 
	% (let* ((par-list (parentheses-item::calc-parenthesis-stencils grob)) 
			% (null-par (grob-interpret-markup grob (markup #:null)))) 
	  % (if start 
		 % (list (car par-list) null-par) 
		 % (list null-par (cadr par-list))))) 

	% startParenthesis = #(define-music-function (parser location note) 
	% (ly:music?) 
	% "Add an opened parenthesis to the left of `note" 
	% #{ 
	  % \once \override ParenthesesItem #'stencils = #(my-stencils #t) 
	  % \parenthesize $note 
	% #}) 

	% endParenthesis = #(define-music-function (parser location note) (ly:music?) 
	% "Add a closed parenthesis to the right of `note" 
	% #{ 
	  % \once \override ParenthesesItem #'stencils = #(my-stencils #f) 
	  % \parenthesize $note 
	% #}) 



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
		\time 2/4

		% Melody here
	e4 e16 c8 e16 ~ |
	e4 r8 c16 d |
	e8 e d c |
	e f g a ~ |
	\break
	a c c a |
	g c16 c~c4 |
	f8 g a b |
	r8 g g r |
	\break
	e4 d16 c8 e16~|
	e4 r8 c16 d |
	e8 e d c |
	a g c e16 d~ |
	\break
	d8 c c d |
	e c16 c~c4|
	f8 e c d |
	r16 g8 r16 g,8 r8|
	\break
	r8 a b c |
	b8. g16~g4 |
	f4 g16 f8. |
	e8 f fis g |
	\break
	r8 a b c |
	b8. g16~g4 |
	ees8 d4 c8 |
	r2 \bar "|."
	 
	   
	}

	text = \lyricmode {
	 % Lyrics here
	}

	harmonies = \chordmode {
	 % Chord changes here
	c2 c:5+ a:m/c c:7 |
	f c:/e d:m s |
	c c:5+ a:m/c c:7 |
	f c:/e d:m s |
	f c:/e d:m c8 d:m dis:dim e:m |
	f2 c:/e aes g:7
	}

	\score {
		<<
		\new ChordNames {
			\set chordChanges = ##t
			\harmonies
		}
		\new Voice = "one" { \autoBeamOn \melody }
		\new Lyrics \lyricsto "one" \text
		>>
		\layout {
			\context {
				\Score
				\override NonMusicalPaperColumn #'line-break-permission = ##f
				\override NonMusicalPaperColumn #'page-break-permission = ##f
			}

		}
		\midi { }
	}