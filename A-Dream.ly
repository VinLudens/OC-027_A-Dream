\version "2.24.4"

date = #(strftime "%B %d %Y" (localtime (current-time)))
\header {
  title = "A Dream"
  subtitle = \markup {
    \center-column {
      "Original Soundtrack for YPSat-2"
      "Original Composition No. 27"
    }
  }
  %instrument = "Piano"
  composer = "VinLudens"
  %arranger = "Arr. by VinLudens"
  tagline = \markup {
    \center-column {
      \with-url #"https://youtube.com/@VinLudens"
      \line { "Engraving with Lilypond" $(lilypond-version) \char ##x2014 "https://youtube.com/@VinLudens" }
      \line { \small \italic {  \date  } }
    }
  }
}

%#(set-global-staff-size 20)
%showLastLength = R1 * 10

\paper {
  #(set-paper-size "a4")
  evenHeaderMarkup = \markup { \if \should-print-page-number { \fill-line { "" \fromproperty #'page:page-number-string } } }
  oddHeaderMarkup = \evenHeaderMarkup
}

\include "oll-core/package.ily"
\loadPackage edition-engraver
\include "editions.ly"

\include "global.ly"
\include "right.ly"
\include "left.ly"
\include "dynamics.ly"

% \pointAndClickOff

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \accidentalStyle piano
    \new Staff = "right" \right
    \new Dynamics = "Dynamics" \dynamics
    \new Staff = "left" { \clef bass \left }
  >>
  \layout {
    \context {
      \Score
      \editionID ##f music
    }
  }
}

% MIDI score with unfolded repeats
\score {
  \new PianoStaff \unfoldRepeats {
    <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \right
      \new Dynamics = "Dynamics" \dynamics
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \left }
    >>
  }
  \midi {
    %\tempo 4=80
    \set Staff.midiMaximumVolume = #0.7
  }
}
