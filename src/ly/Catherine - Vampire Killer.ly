	\header {
	 title = "Catherine" 
	 subtitle = "Vampire Killer" 
	 composer = "Kinuyo Yamashita" 
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
		\key f \major
		\time 4/4

		% Melody here
		d'16 d8 c16 r b8.~b8. d,16~d16 e f g |
		a8. d,16~d8 a' g16 c8.~c4 |
		d16 d8 c16 r b8.~b8. d,16~d16 e f g |
		\break
		a8. d,16~d8 a' g16 g8.~g4 |
		r8 d' r16 a'8. gis16 a gis f r4 |
		a8 a16 aes r aes g r a f a aes d aes g f |		
		\break
		r8 d r16 a'8. gis16 a g f r4 |
		a8 a16 aes r aes g r a f a aes d, aes' g f |
		cis8. e16~e8 bes' a8. f16~f8 d |
		\break
		cis8. e16~e8 bes' a8. d,16 r4 |
		cis8. e16~e8 bes' a8. f16~f8 d |
		e8. g16~g8 bes a8. b16~b8 cis |
		\break
		d16 d d, d~d2. |
		bes,8 bes d16 f8. c8 c e16 g8. |
		d''16 d d, d~d2. |
		bes,8 bes d16 f8. c4 r |
		\break
		
		

	 
	   
	}

	text = \lyricmode {
	 % Lyrics here
	}

	harmonies = \chordmode {
	 % Chord changes here
		d2:m g bes c d:m g
		bes c d1:m bes
		d:m bes ais2:dim/cis d:m
		ais2:dim/e d:m ais:dim/cis d:m ais:dim/e a:7
		d1:m bes2 c d1:m bes2 c
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
