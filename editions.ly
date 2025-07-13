\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
\addEdition fingering
\addEdition dynamics
\addEdition text

mpCrescStretto = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:dynamic "mp"
                              #:normal-text #:italic "cresc. e stretto poco a poco"))

subitoF = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:normal-text #:italic "subito"
                              #:dynamic "f"))

ffMarcato = \tweak DynamicText.self-alignment-X #LEFT \tweak X-offset #0.0
#(make-dynamic-script (markup #:dynamic "ff"
                              #:normal-text #:italic "marcato"))

paren =
#(define-event-function (dyn) (ly:event?)
   (make-dynamic-script
    #{ \markup \concat {
      \normal-text \italic \fontsize #2 (
      \pad-x #0.2 #(ly:music-property dyn 'text)
      \normal-text \italic \fontsize #2 )
       }
    #}))

\editionMod dynamics 1 0/4 music.Dynamics \pp
\editionMod text 1 0/4 music.Staff.A  \textMark "A dream comes to mind..."

\editionMod dynamics 5 0/4 music.Dynamics \pp

\editionMod dynamics 13 0/4 music.Dynamics \mpCrescStretto
\editionMod text 13 0/4 music.Staff.A \textMark "The dream starts to manifest..."

\editionMod dynamics 19 0/4 music.Dynamics \cresc

\editionMod dynamics 21 0/4 music.Dynamics \ffMarcato
\editionMod dynamics 21 0/4 music.Voice.A ->
\editionMod dynamics 21 1/4 music.Voice.A ->
\editionMod dynamics 21 2/4 music.Voice.A ->
\editionMod dynamics 21 3/4 music.Voice.A ->
\editionMod text 21 0/4 music.Staff.A \textMark "The dream is a reality."

\editionMod dynamics 22 0/4 music.Voice.A ->
\editionMod dynamics 22 1/4 music.Voice.A ->
\editionMod dynamics 22 2/4 music.Voice.A ->
\editionMod dynamics 22 3/4 music.Voice.A ->

\editionMod dynamics 23 0/4 music.Voice.A ->
\editionMod dynamics 23 1/4 music.Voice.A ->

\editionMod dynamics 27 0/4 music.Dynamics \paren\mf

\editionMod dynamics 29 0/4 music.Dynamics \dim

\editionMod dynamics 31 0/4 music.Dynamics \p

\editionMod dynamics 33 2/4 music.Dynamics \p
\editionMod dynamics 33 0/4 music.Voice.A -\parenthesize ->
\editionMod dynamics 33 0/4 music.Voice.B -\parenthesize ->
\editionMod text 33 2/4 music.Staff.A \textMark "Starting to reminisce about the dream..."

\editionMod dynamics 37 0/4 music.Dynamics \mp

\editionMod dynamics 40 0/4 music.Dynamics \<
\editionMod dynamics 40 0/4 music.Dynamics.A -"rall."
\editionMod dynamics 40 2/4 music.Dynamics \!

\editionMod dynamics 41 0/4 music.Dynamics \mp
\editionMod dynamics 41 0/4 music.Dynamics \cresc

\editionMod dynamics 42 2/4 music.Dynamics \f

\editionMod dynamics 43 0/4 music.Dynamics \>

\editionMod dynamics 44 0/4 music.Dynamics \pp

\editionMod dynamics 45 0/4 music.Dynamics \subitoF

\editionMod dynamics 46 0/4 music.Dynamics \sfz
\editionMod dynamics 46 1/4 music.Dynamics \ff
\editionMod dynamics 46 0/4 music.Voice.B -^

\editionMod dynamics 49 0/4 music.Dynamics.A -"rall."

\editionMod dynamics 51 0/4 music.Dynamics \mp
\editionMod text 51 0/4 music.Staff.A \textMark "As if woken up from a dream..."

\editionMod dynamics 52 0/4 music.Dynamics \pp
\editionMod text 52 0/4 music.Staff.A \textMark "The dream is but a distant memory..."

\editionMod dynamics 54 0/4 music.Dynamics.A -"ritenuto"

\editionMod dynamics 59 0/4 music.Dynamics \f
\editionMod dynamics 59 0/4 music.Dynamics \>

\editionMod dynamics 60 0/4 music.Dynamics \p
