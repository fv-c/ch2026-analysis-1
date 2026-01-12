\version "2.24.4"

\include "lilypond-book-preamble.ly"

#(ly:set-option 'separate-page-formats 'pdf)


\relative c,, {
  \override Staff.TimeSignature.stencil = ##f
  \hide Stem
  \clef F
  c4
  c'
  c'
  \clef G
  c'
  c'
  c'
}