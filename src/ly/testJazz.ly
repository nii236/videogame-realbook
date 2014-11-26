\version "2.17.25"
\include "LilyJAZZ.ily"

\score {
  \new Staff {
    \jazzOn
    c'4 c' \tuplet 3/2 { d'8-- es'-- e'-- } g'4 ~ |
    g'4 r r8 f'-^ \noBeam es' c'-> \bar "|."
  }
}