
\score {
	<<
	\new ChordNames {
		\set chordChanges = ##t
%		\harmonies
	}
	\new Voice = "one" {\melody }
	>>
	\layout {
		\context {
			\Score
			\override NonMusicalPaperColumn #'line-break-permission = ##f
			\override NonMusicalPaperColumn #'page-break-permission = ##f
		}

	}
	\midi{
	  \context {
	    \new Voice = "one" {\melody}
	    
	  }
	}
}
