\version "2.24.4"
\include "global.ly"

crescPoco = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "cresc. poco a poco"))

rit = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "rit."))

rall = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "rall."))

dynamics = {
  \global


  s1*13 |

  \repeat segno 2 {

    s1*19|

    \alternative {
      \volta 1 {

        s1*12|
        \time 2/4 s2| \time 4/4

        s1*4 |

        \cadenzaOn s2
        \tiny s32 s s
        s s s s
        s s s s
        s s s s s s s
        s s s s
        s s s16 s
        s s s s \normalsize s8 s s \partial 8 s \cadenzaOff  |


        s1 |
      }
      \volta 2 \volta #'() {
        \section
        \sectionLabel "Coda"
      }
    }
  }

  s1*6 |

  \cadenzaOn \once\override DynamicTextSpanner.style = #'none \once\override DynamicTextSpanner.Y-offset = #-2 s1\cresc






  \cadenzaOff \partial 4
  s8
  s8 |

  s1*2 |

}
