\header {
 title = "Animal Crossing: Wild World" 
 subtitle = "2:00AM" 
 composer = "[Composer]" 
}

\paper {
line-width = 15\cm
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



melody = \relative c'' {
 \clef treble
 \key a \major
 \time 3/4
 
 % Melody here
 \autoBeamOn
   r4 cis2 | r4 b2 | r4 cis2 | r4 b2 \break
   cis8 e~e2 | d8 b~b2 | cis4 a cis | b2. | \break
   a4 b cis | gis'2 a4 | e2. ~ e2.\break
   fis4 gis a | gis2. | e4 fis gis | fis2. \break
   fis,4 a cis | e2 gis,4 | a2.~a2. \break
   a4 a a | a gis fis | gis2. |  gis \break
   gis4 gis gis | gis fis e | fis2. | fis2. \bar "||"
   
}

text = \lyricmode {
 % Lyrics here
}

harmonies = \chordmode {
 % Chord changes here
 a:maj7 g:maj7 a:maj7 g:maj7 |
 a:maj7 g:maj7 a:maj7 g:maj7 |
 fis:m7 b:7 e:7sus4 e:7 |
 d:maj7 cis:maj7 cis:m7 fis:7|
 b:m7 e:7 a:dim a |
 fis:m7 b:7 e:maj7 e:6 |
 cis:m fis:7 b:m9 e:7sus4
}
\score {
 <<
 \new ChordNames {
 \set chordChanges = ##t
 \harmonies
 }
 \new Voice = "one" { \autoBeamOff \melody }
 \new Lyrics \lyricsto "one" \text
 >>
 \layout { }
 \midi { }
}
