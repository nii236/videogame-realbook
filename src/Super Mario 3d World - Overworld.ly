	\header {
	 title = "Super Mario 3d World" 
	 subtitle = "Overworld Theme" 
	 composer = "Unknown" 
	}

	#(define ((my-stencils start) grob) 
	(let* ((par-list (parentheses-item::calc-parenthesis-stencils grob)) 
			(null-par (grob-interpret-markup grob (markup #:null)))) 
	  (if start 
		 (list (car par-list) null-par) 
		 (list null-par (cadr par-list))))) 

	startParenthesis = #(define-music-function (parser location note) 
	(ly:music?) 
	"Add an opened parenthesis to the left of `note" 
	#{ 
	  \once \override ParenthesesItem #'stencils = #(my-stencils #t) 
	  \parenthesize $note 
	#}) 

	endParenthesis = #(define-music-function (parser location note) (ly:music?) 
	"Add a closed parenthesis to the right of `note" 
	#{ 
	  \once \override ParenthesesItem #'stencils = #(my-stencils #f) 
	  \parenthesize $note 
	#}) 



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
		r16 f8 g16 a8 a bes16 a bes b ~ b8. c16 |
		c8 bes a16 aes8 g16~g4 c16 c, d f \bar"||"|
		g8 f e16 f8 c16~c4~c16 c d f |	
		\break
		g8 f e16 f8 a16~a4~a16 e f c' |
		c8. bes16~bes8 f c'8. bes16~bes8 f |
		a a a16 bes8 g16~g4~g16 c, d f |
		\break
		g8 f e16 f8 c16~c4~c16 c d f |
		g8 f e16 f8 a16~a4~a16 e f c' |
		c8. bes16~bes8 a g c d16 f8. |
		f2.~f16 c d f |
		\break
		g8 f e16 f8 c16~c4~c16 c d f |
		g8 f e16 f8 a16~a4~a16 e f c |
		c8. bes16~bes8 f c8. bes16~bes8 f |
		a8 a a16 bes8 g16~g4~g16 c d f |
		\break
		g8 f e16 f8 c16~c4~c16 c d f |
		g8 f e16 f8 a16~a4~a16 e f c |
		c8. bes16~bes8 a g c d16 f8. |
		f2.~f8 f |
		\break
		d'8. bes16~bes8 d f8. e16~e8 d |
		c c c16 bes8 a16~a2 |
		bes8. g16~g8 bes d8. c16~c8 bes |
		a4 bes b c |
		\break
		d8. bes16~bes8 d f8. e16~e8 d |
		c c c16 bes8 a16~a2 |
		bes8. g16~g8 g16 a bes8. g16~g8 ees |
		c1 |
		r8 r16 g r g r8 gis4~gis16 c d e \bar "||"|
		\break
		g8 f e16 f8 c16~c4~c16 c d f |
		g8 f e16 f8 a16~a4~a16 e f c' |
		c8. bes16~bes8 f c'8. bes16~bes8 f |
		a8 a a16 bes8 g16~g4~g16 c, d f |
		\break
		g8 f e16 f8 c16~c4~c16 c d f |
		g8 f e16 f8 a16~a4~a16 e f c' |
		c8. bes16~b8 a g c, d16 f8. |
		f1 
		\startParenthesis 
			r16 c d f
		\endParenthesis
		\break
		
		
		

	 
	   
	}

	text = \lyricmode {
	 % Lyrics here
	}

	harmonies = \chordmode {
	 % Chord changes here
	 %FIX BUGS
	 f8 f4:7/ees bes:/d des:7 c s2 c f1 
	 d:m7 bes f2:/c c
	 f1 d:m7 bes2 c f4 g:m7 f g:m7
	 f1 d:m7 bes f2:/c c
	 f1 d:m7 bes2 c f4 g:m7 gis:m7.5- a:m7
	 bes1 a2:m7 d:7 g:m7 c:7 f4 g:m7 gis:m7 f:/a
	 bes2 b:dim7 a:m7 d:7 g:m7 ees c1 c2 c:7.5+
	 f1 d:m7 bes s
	 f d:m7 bes2 c f1 %(Dm7 Gm7 C7)
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