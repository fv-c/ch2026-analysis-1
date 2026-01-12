\version "2.24.4"

\include "lilypond-book-preamble.ly"

#(ly:set-option 'separate-page-formats 'pdf)


<<
  \new Staff \relative c' {
  \override Staff.TimeSignature.stencil = ##f
  \hide Stem
  <c d fis>4
  <d fis! c'>4
  <fis! c' d>4
  <fis! d' c'>4
}

\new RhythmicStaff \with {
  \remove Staff_symbol_engraver
  \remove "Note_heads_engraver"
}

 \relative c' {
  \override Staff.TimeSignature.stencil = ##f
  \hide NoteHead
  \hide Stem
 s4^\markup\center-column{"[4]" "[2]"}
  s4^\markup\center-column{"[6]" "[4]"}
 s4^\markup\center-column{"[2]" "[6]"}
  s4^\markup\center-column{"[10]" "[8]"}
}
>>