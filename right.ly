\version "2.24.4"
\include "global.ly"

right = \absolute {
  \global
  \key c \major
  \ottava 1
  \voiceOne

  <e''' g''' c''''>1\arpeggio |
  <g''' b''' e''''>1\arpeggio |
  <e''' g''' c''''>2\arpeggio \tuplet 3/2 { b'''4 c'''' b''' } |
  <e''' g'''>4\fermata \ottava 0 e'' f'' a'' |

  \oneVoice

  <e'' g''>4\( e'' e'' d'' |
  e'' e'' e'' g'' |
  e'' e'' e'' d'' |
  e''2 c''\) |

  e''4\( e'' e'' d'' |
  e'' e'' e'' g'' |
  e'' e'' e'' d'' |
  b'2\) c''4 d'' |

  \repeat unfold 4 { e''16 c'' g' c'' } |
  \repeat segno 2 {
    \repeat unfold 4 { d''16 c'' g' c'' } |
    \repeat unfold 4 { \volta 1,2,4 {e''16} \volta 3 { g'' } c'' g' c'' } |
    \repeat unfold 4 { d''16 c'' g' c'' } |

    \repeat unfold 4 { b'16 c'' b' g' } |
    \repeat unfold 4 { d''16 e'' d'' a' } |
    \repeat unfold 4 { d''16 c'' b' c'' } |
    \repeat unfold 2 { d''16 c'' g' c'' } d'' c'' g' e' d' c' g c' |



    e'16 c' g c' e' c' g c' g' c' g c' f' c' g c' |
    d'16 c' g c' g' d' c' d' b' d' c' d' g' d' c' d' |
    e' c' g c' e' c' g c' g' c' g c' f' c' g c' |
    d' c' g c' g' d' c' d' b' g' e' g' d'' g' e' g' |

    e'' c'' g' c'' e'' c'' g' c'' g'' c'' g' c'' f'' c'' g' c'' |
    d'' c'' aes' c'' g'' d'' c'' d'' b'' d'' c'' d'' g'' d'' c'' d'' |
    e'' c'' g' c'' e'' c'' g' c'' g'' c'' g' c'' f'' c'' g' c'' |
    d'' c'' aes' c'' g'' d'' c'' d'' b'' aes'' f'' aes'' d''' aes'' f'' aes'' |

    \ottava 1
    \repeat unfold 4 { e'''16 c''' g'' c''' } |
    \repeat unfold 4 { d'''16 c''' aes'' c''' } |
    e''' c''' g'' c''' e''' c''' g'' c''' g''' c''' g'' c''' f''' c''' g'' c''' |
    d''' c''' aes'' c''' g''' d''' c''' d''' b''' aes''' f''' aes''' d'''' aes''' f''' aes''' |

    \alternative {
      \volta 1 {

        \bar "||"

        \tempo "Tempo 1" 4 = 96
        <g''' c'''' e''''>2\fermata \ottava 0 <aes' c'' g''>4..\( f''16 |
        <a' c'' g''>4.. a''16 <b' d'' g''>4 e''\) |
        <e'' g'' c'''>4.\(\arpeggio d'''8 <f'' aes'' e'''>4.\arpeggio d'''8 |
        <e'' g'' d'''>8 c''' b'' a'' <e'' g''>4\fermata f''\)\fermata |

        \tempo "Tempo 2" 4 = 120
        r2 <e'' c'''>\( |
        <aes' g''>2. f''4 |
        <b' g''>2. a''4 |
        <a' d'' g''>2 f''\) |

        r2 <e'' c'''>4.\( d'''8 |
        <f'' aes'' e'''>2.\) d'''4\( |
        <e'' g'' d'''>4 \acciaccatura { e'''16 d''' } c'''4 a'' g'' |
        <e'' g''>2 f''\)\fermata |

        \time 2/4 g'4 aes'32 g' e' c' \clef "bass" aes g e c \clef "treble" | \time 4/4

        r4 <e' g' c''>\( <aes c' g'>4.. f'16 |
        <a c' g'>4.. a'16 <b d' g'>4 \tuplet 6/8 { e'32\) \tiny \clef "bass" c' aes g e c \clef "treble" \normalsize } |
        r4 <e' g' c''>8.\( d''16 <f' aes' e''>4..\) d''16\( |
        <e' g' d''>8. c''16 b'8. a'16 <e' g'>2 |

        \cadenzaOn <d' f'>2\)
        \tiny \change Staff = "left" \voiceOne f32[\pp aes c'
        \change Staff = "right" d' f' aes' c'']
        \change Staff = "left" \clef "treble" \voiceTwo d''[ f'' aes'' c'''
        \change Staff = "right" \ottava 1 d''' f''' aes'''] c''''[ aes''' f''' d''' \ottava 0
        \change Staff = "left" c''' aes'' f'' d'']
        \change Staff = "right" \voiceOne c''[ aes' f'16 d'
        \change Staff = "left" \clef "bass" c' aes f d] \oneVoice \normalsize c8[ aes, g, \cadenzaOff \partial 8 f,]  |

        \tempo "Tempo 1" 4 = 96
        \voiceOne e, \change Staff = "right" \oneVoice g'16 c'' \repeat unfold 3 { e'' c'' g' c'' } |
      }
      \volta 2 \volta #'() {
        \section
        \sectionLabel "Coda"
      }
    }
  }


  \ottava 2 \repeat unfold 4 { e''''16 c'''' g''' c'''' } |
  \repeat unfold 4 { d''''16 c'''' aes''' c'''' } |
  \repeat unfold 2 { e''''16 c'''' g''' c'''' } g'''' c'''' g''' c'''' f'''' c'''' g''' c'''' |
  d'''' c'''' aes''' c'''' g'''' d'''' c'''' d'''' b'''' aes'''' f'''' aes'''' c''''' aes'''' f'''' aes'''' |


  <e'''' g'''' c'''''>4\tweak Parentheses.font-size 0\parenthesize\fermata \ottava 0 <e' aes' c''>4\( <e' g'>4.. <e' f'>16 |
  <e' g'>4.. <e' aes'>16 <e' g'>4 <g c' e'> ~ |

  \cadenzaOn q4\)
  \change Staff = "left" c,32[ e, g, aes,
  \change Staff = "right" \clef "bass" c e g aes]
  \change Staff = "left" c[ e g aes
  \change Staff = "right" c' e' g' aes']
  \change Staff = "left" \clef "treble" c'[ e' g' aes'
  \change Staff = "right" \clef "treble" c'' e'' g'' aes'']
  \cadenzaOff \partial 4
  \change Staff = "left" c''[ e'' g'' aes''
  \change Staff = "right" \ottava 1 c''' e''' g''' aes'''] |

  \repeat tremolo 16 { g'''32 aes''' } |
  <g''' c''''>1\arpeggio |

  \bar "|."
}
