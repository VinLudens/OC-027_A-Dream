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


  \repeat unfold 4 { e''16-"accel poco a poco" c'' g' c'' } |
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
  d'' c'' gis' c'' g'' d'' c'' d'' b'' d'' c'' d'' g'' d'' c'' d'' |
  e'' c'' g' c'' e'' c'' g' c'' g'' c'' g' c'' f'' c'' g' c'' |
  d'' c'' gis' c'' g'' d'' c'' d'' b'' gis'' f'' gis'' d''' gis'' f'' gis'' |

  \ottava 1
  \repeat unfold 4 { e'''16 c''' g'' c''' } |
  \repeat unfold 4 { d'''16 c''' gis'' c''' } |
  e''' c''' g'' c''' e''' c''' g'' c''' g''' c''' g'' c''' f''' c''' g'' c''' |
  d''' c''' gis'' c''' g''' d''' c''' d''' b''' gis''' f''' gis''' d'''' gis''' f''' gis''' |

  \bar "||"

  <g''' c'''' e''''>2

}
