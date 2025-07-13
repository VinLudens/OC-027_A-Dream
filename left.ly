\version "2.24.4"
\include "global.ly"

left = \absolute {
  \global
  \key c \major
  \tempo 4 = 96
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

  <c, c>2 <c g c'> |
  \repeat segno 2 {
    <e, e>2 <e b e'> |
    <c, c>2 <c g c'> |
    <e, e>2 <e b e'> |

    <a, a>2 <a e'> |
    <f, f>2 <f c' f'> |
    <c, c>2 <c g c'> |
    <e, e>2 <e b e'> |

    \tempo "Animato" 4 = 120

    <a,, a,>2 <a, e> |
    <f,, f,>2 <f, c f> |
    <d,, d,>2 <d, a, d> |
    <e,, e,>2 <e, b, e> |

    <c, c>2 <c g c'> |
    <d, d>2 <d f aes c'> |
    <e, e>2 <e b e'> |
    <f, f>2 <f aes c' d'> |


    <g, g>2 <g d' g'> |
    <f, f>2 <f aes c' d'> |
    <g, g>2 <g b d' e'> |
    <f, f>2 <f aes c' d'> |

    \alternative {
      \volta 1 {

        \bar "||"


        <c c'>2 \clef "treble" <c' g'> |
        q2 q |
        <c' g' c''>2\arpeggio <d' f' aes' c''>\arpeggio |
        <e' g' b'>2 <f' a' c''>4 <aes' c''> |


        \clef "bass" c8 g c' d' e' g' e' d' |
        d8 aes c' d' e' d' c' aes |
        e8 b e' f' g' f' e' a' |
        f8 c' \clef "treble" f' g' q2 | \clef "bass"

        \clef "bass" c8 g c' d' e' g' e' d' |
        d8 f aes c' d' c' aes f |
        e8 g b e' \clef "treble" f' g' a' b' |
        <f' a' c''>2 <aes' c''>2 | \clef "bass"

        \time 2/4 r2 | \time 4/4

        <c,, c,>4 <c g> q q |
        q q q q |
        <c,, c,> <c g> <d, d> q |
        <e, e> q <f, f> q |

        \cadenzaOn <f aes c'>2
        \tiny s32 s s
        s s s s
        s s s s
        s s s s s s s
        s s s s
        s s s16 s
        s s s s \normalsize s8 s s \partial 8 s \cadenzaOff  |


        \voiceTwo <c,, c,>2 \oneVoice <c g c'> |
      }
      \volta 2 \volta #'() {
        \section
        \sectionLabel "Coda"
      }
    }
  }

  \clef "treble"
  <g g'>2 <g' b' d'' e''> |
  <f f'>2 <f' aes' c'' d''> |
  <g g'>2 <g' b' d'' e''> |
  <f f'> <f' aes' c'' d''> |

  \clef "bass"
  <c c'>1 ~ |
  <c c'>1 |

  \cadenzaOn <c,, c,>1






  \cadenzaOff \partial 4
  s8
  s8 |

  \ottava 1 \repeat tremolo 16 { e'''32 c''' } |
  <c''' e'''>1\arpeggio |

  \bar "|."

}
