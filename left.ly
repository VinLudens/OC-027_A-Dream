\version "2.24.4"
\include "global.ly"

left = \absolute {
  \global
  \key c \major
  \tempo 4 = 96
  \clef "treble"
  \change Staff = "right" \voiceTwo

  <c'' g'' c'''>1\arpeggio |
  <e'' b'' e'''>1\arpeggio |
  <c'' g'' c'''>1\arpeggio |
  <e'' g'' b''>1 |

  \change Staff = "left" \oneVoice
  \repeat unfold 4 {
    <g c'>1 |
    <b e'>1 |
  }





  \clef "bass"

  \repeat unfold 2 {
    <c, c>2 <c g c'> |
    <e, e>2 <e b e'> |
  }


  <a, a>2 <a e'> |
  <f, f>2 <f c' f'>-"??f' or not??" |
  <c, c>2 <c g c'> |
  <e, e>2 <e b e'> |

  \tempo "Animato" 4 = 120

  <a,, a,>2 <a, e> |
  <f,, f,>2 <f, c> |
  <d,, d,>2 <d, a, d> |
  <e,, e,>2 <e, b, e> |

  <c, c>2 <c g c'> |
  <d, d>2 <d f gis c'> |
  <e, e>2 <e b e'> |
  <f, f>2 <f gis c' d'> |


  <g, g>2 <g d' g'> |
  <f, f>2 <f gis c' d'> |
  <g, g>2 <g b d' e'> |
  <f, f>2 <f gis c' d'> |

  \bar "||"

  <c c'>1 |
}
