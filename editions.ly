\include "global.ly"

\consistToContexts #edition-engraver Score.PianoStaff.Staff.Voice
\consistToContexts #edition-engraver Score.PianoStaff.Dynamics

\addEdition tweaks
\addEdition fingering
\addEdition dynamics

\editionMod dynamics 1 0/4 music.Dynamics \pp

\editionMod dynamics 13 0/4 music.Dynamics \mp
\editionMod dynamics 13 0/4 music.Dynamics.A -"cresc. e stretto poco a poco"

\editionMod dynamics 19 0/4 music.Dynamics \cresc

\editionMod dynamics 21 0/4 music.Dynamics \ff

\editionMod dynamics 27 0/4 music.Dynamics \mp

\editionMod dynamics 29 0/4 music.Dynamics \dim

\editionMod dynamics 31 0/4 music.Dynamics \p

\editionMod dynamics 33 2/4 music.Dynamics \p
\editionMod dynamics 33 0/4 music.Voice.A ->
\editionMod dynamics 33 0/4 music.Voice.B ->

\editionMod dynamics 37 0/4 music.Dynamics \mp

\editionMod dynamics 40 0/4 music.Dynamics \<
\editionMod dynamics 40 0/4 music.Dynamics.A -"rall."
\editionMod dynamics 40 2/4 music.Dynamics \!

\editionMod dynamics 41 0/4 music.Dynamics \mp
\editionMod dynamics 41 0/4 music.Dynamics \cresc

\editionMod dynamics 43 2/4 music.Dynamics \>

\editionMod dynamics 44 0/4 music.Dynamics \pp

\editionMod dynamics 45 0/4 music.Dynamics \sf

\editionMod dynamics 46 0/4 music.Dynamics \sfz
\editionMod dynamics 46 1/4 music.Dynamics \ff

\editionMod dynamics 49 0/4 music.Dynamics.A -"rall."

\editionMod dynamics 51 0/4 music.Dynamics \mp

\editionMod dynamics 52 0/4 music.Dynamics \pp

\editionMod dynamics 54 0/4 music.Dynamics.A -"ritenuto"

\editionMod dynamics 59 0/4 music.Dynamics \f
\editionMod dynamics 59 0/4 music.Dynamics \>

\editionMod dynamics 60 0/4 music.Dynamics \p
