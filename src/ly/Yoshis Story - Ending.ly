\header {
	title = "Yoshi's Story" 
	subtitle = "Ending" 
}

melody = \relative c' {
	\clef treble
	\key e \major
	\time 4/4
	\repeat volta 2 {
		gis'4. b,8 cis e gis cis |
		b1 |
		r4 b8 cis dis4. cis8 |
		b2. gis8 e |
		\break
		cis4 a' r4 a8 fis |
		dis4 b' r b8 gis |
		e4 cis' r cis8 dis |
		b2. r8 e, |
		\break

		cis4 cis8 a' fis4. e8 |
	}
    \alternative{
		{
        	e1 
			\compressFullBarRests R1*3
        }
		{
			e2. gis4
		}
	}
        
    \break
    \repeat volta 2 {
    	b4. a8 a2~a2. fis4 |
	    a4. gis8 gis2~ |
        gis2. e4 |
        \break
        
        gis4. fis8 fis2~ |
        fis2. dis4 |
        fis4. e8 e2|
        r1 |
        \break
        
        gis'4. b,8 cis e gis cis |
        b2 gis |
        gis2 a8 gis fis8. fis32 gis |
        e2 e~\startTrillSpan e2.  
        \stopTrillSpan gis,4 
    }
}

harmonies = \chordmode {
	e2 a:maj7 gis:m7.5- cis:m7 fis:7/ais dis:m7 gis:m7.5- cis:m7
	fis:m7 b:7 gis:m7.5- cis:m7 fis:7/ais dis:7 gis:m7.5- cis:m7
	fis:m7 b:7 e1:maj7 s s s e2:maj7 e:7 
	a1 a:m gis:m b2:/cis b:m/cis
	fis1 b2 b:m e1 s
	e2 a:maj7 gis:m7.5- cis:m7 fis:m7 b:7 e:maj7 
}
