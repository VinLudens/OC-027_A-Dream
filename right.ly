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

  \tempo "Tempo 1" 4 = 96
  <g''' c'''' e''''>2\fermata \ottava 0 <gis' c'' g''>4.. f''16 |
  <a' c'' g''>4.. a''16 <b' d'' g''>4 e'' |
  <e'' g'' c'''>4.\arpeggio d'''8 <f'' gis'' e'''>4.\arpeggio d'''8 |
  <e'' g'' d'''>8 c''' b'' a'' <e'' g''>4\fermata f''\fermata |

  r2 <e'' c'''> |
  <gis' g''>2. f''4 |
  <b' g''>2. a''4 |
  <a' d'' g''>2 f'' |

  r2 <e'' c'''>4. d'''8 |
  <f'' gis'' e'''>2. d'''4 |
  <e'' g'' d'''>4 c''' a'' g'' |
  <e'' g''>2 f'' |

  \time 2/4 g'4 gis'32 g' e' c' gis g e c | \time 4/4

  \tempo "Tempo 2" 4 = 120
  r4 <e' g' c''> <gis c' g'>4.. f'16 |
  <a c' g'>4.. a'16 <b d' g'>4 \tuplet 6/8 { e'32 \tiny c' gis g e c \normalsize } |
  r4 <e' g' c''>8. d''16 <f' gis' e''>4.. d''16 |
  <e' g' d''>8. c''16 b'8. a'16 <e' g'>2 |

  \cadenzaOn <d' f'>2
  \tiny \change Staff = "left" f32[ gis c'
  \change Staff = "right" d' f' gis' c''
  \change Staff = "left" d''] f''[ gis'' c'''
  d''' f''' gis''' c'''' gis'''] f'''[ d'''
  c''' gis'' f'' d''
  c'' gis'] f'16[ d'
  c' gis f d] \normalsize c8[ gis, g, \cadenzaOff \partial 8 f,]  |

  \voiceOne e, \change Staff = "right" \oneVoice g'16 c'' \repeat unfold 3 { e'' c'' g' c'' } |


}
