.align 2
.data
.global art2
.text
art2:
    stmfd	sp!, {lr}
    LDR R0,=format
    LDR R1,=art_0
    bl printf

    LDR R0,=format
    LDR R1,=art_1
    
    bl printf
    LDR R0,=format
    LDR R1,=art_2
    
    bl printf
    LDR R0,=format
    LDR R1,=art_3
    
    bl printf
    LDR R0,=format
    LDR R1,=art_4
    
    bl printf
    LDR R0,=format
    LDR R1,=art_5
    
    bl printf
    LDR R0,=format
    LDR R1,=art_6
    
    bl printf
    LDR R0,=format
    LDR R1,=art_7
    
    bl printf
    LDR R0,=format
    LDR R1,=art_8
    
    bl printf
    LDR R0,=format
    LDR R1,=art_9
    
    bl printf
        LDR R0,=format
    LDR R1,=art_10
    
    bl printf
    LDR R0,=format
    LDR R1,=art_11
    
    bl printf
    LDR R0,=format
    LDR R1,=art_12
    
    bl printf
        LDR R0,=format
    LDR R1,=art_13
    
    bl printf
    LDR R0,=format
    LDR R1,=art_14
    
    bl printf
    LDR R0,=format
    LDR R1,=art_15
    
    bl printf
        LDR R0,=format
    LDR R1,=art_16
    
    bl printf
    LDR R0,=format
    LDR R1,=art_17
    
    bl printf
    LDR R0,=format
    LDR R1,=art_18
    
    bl printf
        LDR R0,=format
    LDR R1,=art_19
    
    bl printf
    LDR R0,=format
    LDR R1,=art_20
    
    bl printf
    LDR R0,=format
    LDR R1,=art_21
    
    bl printf
        LDR R0,=format
    LDR R1,=art_22
    
    bl printf
    LDR R0,=format
    LDR R1,=art_23
    
    bl printf
    LDR R0,=format
    LDR R1,=art_24
    
    bl printf
        LDR R0,=format
    LDR R1,=art_25
    
    bl printf
    LDR R0,=format
    LDR R1,=art_26
    
    bl printf
    LDR R0,=format
    LDR R1,=art_27
    
    bl printf
        LDR R0,=format
    LDR R1,=art_28
    
    bl printf
    LDR R0,=format
    LDR R1,=art_29
    
    bl printf
    LDR R0,=format
    LDR R1,=art_30
    
    bl printf
    LDR R0,=format
    LDR R1,=art_31
    
    bl printf
    LDR R0,=format
    LDR R1,=art_32
    
    bl printf
    LDR R0,=format
    LDR R1,=art_33
    
    bl printf

    mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {lr}
	bx	lr

.data
format: .asciz "%s"
art_0: .asciz "????+?I????77II??+++=++++++=+++===+===============~=~=~~=~~=~~:::,,,,,..........\n"
art_1: .asciz "77777I???+++++???=====~=~~===+===~~=~~=~~~=++=~~~~:~:~~:~~=~~=:::::,,,,.........\n"
art_2: .asciz "???++++++++?????++==+=+++=+++++=+=+++++++=+++??++=7~++++====~:=~:,,,,,,,... . ..\n"
art_3: .asciz "+===++++++??+I????I????????I+?????+?+?++???+++=+++?++===++=~=+~~::::,,,,........\n"
art_4: .asciz "??II?III?IIIIIIII?+?+??I??+????+???+++?+?I?I?+I++??=++++=~=~~~~~~:~:::,,,,....  \n"
art_5: .asciz "I77II777777$$$$$Z$$$I777II7?I?IIII7I??I??+?+????++I7+=+?+=+~==7~==~::::,,,,.....\n"
art_6: .asciz "$$$$ZZOZ$Z$ZZZOZ$Z7III7I?????I777??IIIII7III?II?I?OZ??I7++?++?+====~::,:,.,.....\n"
art_7: .asciz "7$$$7$Z$Z$7777I777II7I7I+??IIIIII7II7???+++?I?I=?77???Z??$8O?++??++~~~:,,,......\n"
art_8: .asciz "7$ZZ7$$Z$7$$77777$7I7II$I$I7II7IIIIII77II?I7?I~I:,,=$Z7??,.==,+:?==~~:~:,,,.....\n"
art_9: .asciz "7Z$$77$$$7ZZ$$7$I7$77IIZ$7II77$$$7IIZ7I7I7$I7I.,:~?8~~$II..=:~:...+~~~::,,:,,...\n"
art_10: .asciz "D88ZZ78O$Z=$ZZZZ$$7I$I7??7$7$7777I7$$7$7ZZ$?D,7I?$IZZ=Z++I+$$,,?+~=~,,. .....,..\n"
art_11: .asciz "OZZOO$$$$ZZ$OZO$$$$7III7$$+I7I7I$O77I7$$I??~,.7OO$II:+~OZ,.::::.~~.,.......,,...\n"
art_12: .asciz "ZZOO$$$OZ$O8Z$O$Z$ZOZ?$$7$$$7$O7I7Z$$Z7$$?I=..,.:$O,8??8.,:?I+~,..=.,:.,..~~,,..\n"
art_13: .asciz "Z$$OOOZ$OZZOZOZ$ZI$77Z$7777$ZI7$87$Z$ZIZ$$?+.,.....?ZZ8,,:~=?+,Z. ......~$Z+:,,.\n"
art_14: .asciz "O8ZZZZZ$ZOZ$ZOZZ$OZZZZ77?I7OII7Z7$7?ZOZ?7$~?$,..,.,O:~,+,+:,:.:~....:=7OZZ7=,,..\n"
art_15: .asciz "8ZZ$O$88OO8OOOO$Z$$O7$7ZD77787IZ?ZZ8$IOO7~:::Z+,.....,.?7+:...,.::?.:?ZO$7+~:,..\n"
art_16: .asciz "ZOZ8O88O8O$$O777ZZ$$$O$OO7ZD7$ZZZ$ZZ$O$7=,I...,I:.~+.,O7.7.~,.:?:~7?O=O$$?=,,,..\n"
art_17: .asciz "$Z8$$$$ZOZ$$8DOZZOZ$$ZIZ$87IZ887OOZOZ=?:?:,.,.?7:..,..,=,=~~I::ZZ8$OOZZ$I+~:::,.\n"
art_18: .asciz "$ZZO8ZOZZO8ZZ$ZZZZZI8ZZ8ZO$$ZOO88D?I=~=?++.,,:?+,.,Z::~+7+=:$$O8D88ZZ7I?+~+=~:..\n"
art_19: .asciz "ODOD8$Z8ZOZ$OO8O7ZOOZZZOOO88DZ8II?:?:,I,,,,O,:+=~~=?O7???ZZ8DNDD8ZOZO$I7??~=::~,\n"
art_20: .asciz "8$DDOZOOOO8OZ$O$O8$7$O8ON887:?:III$I$~Z:I+=,+~++ZZIO7ZDZN7NNNDDD8$OZ$$7I?+~~~,,,\n"
art_21: .asciz "OODNDDOODD88O88OD88DDDDO:=O8II?77$II+,=~Z$?~O888$8DDOMDMNNNNDD888Z$O$$$??I7??:,,\n"
art_22: .asciz "8DDN8NNDDMNNDD8DND888$7+?Z$Z~:7ZI7+$=I++888NZMN87N8MMDNNNNDDDD88O8OOI$7Z$$??+~:,\n"
art_23: .asciz "NMMDNNNNNNDDD8DDDO++788I~I=:~:=++==O88NMNNDDMMMNMMMNNND8D8D88DDOO$$Z$7I$I7I?+~:,\n"
art_24: .asciz "88NDD8N88NDOD7,+++7==?I~~==~:+888NMMMMNNMD8MMMMMMNNMNDNNDDDN888Z8OZ$+Z7$7II=+~::\n"
art_25: .asciz "NNNND88DODD$~$7?++$IO?:+ZZOZZMMMMMMMMNMMMMMMMMMMMMNNDDDD888Z8O8Z8$O$$$?I++==~:,,\n"
art_26: .asciz "DN8NM8878+=~~~~=:$$ZZZ$$$$$$OMMMMDMMMMMMMMMMMNNN8NNDD8DD8DOZ88OZ$$ZZ??=+77?~~=::\n"
art_27: .asciz "N8NDDM8~$7$=II,8$77I7II7$ZMDDDMMMMMMMMMMMMNMMNDDNDDDD8NDDOZZ$$ZO$$IO$Z777==+=:,:\n"
art_28: .asciz "NDD8DD8=:++=I+O7?II77MM=OMMMMMMMMMMMMMMMMMNDNNNMND8Z8D8OO8$OOZ8OZ?77Z?I+?+=~~=,,\n"
art_29: .asciz "DN8MNMOD=+==:::$NND,OMMMMMMMMMMMMMMMMMNNNDN8NMD8O8D888O8O7O8O8Z7O7IZI7+=?7I:~=~:\n"
art_30: .asciz "OODDN88D::?=?Z,:8MMMMMMMMMMMMMMMMMMMMMMMMMNNDNNOOO8ODZ8ZODDNO$N8O7Z7?+=$Z+?I~::,\n"
art_31: .asciz "MMMDD8D7,I,.7Z8MMMDMMMMMMMMMMMMMMMMMMDMMDONDZDOOODNNND8N8OO88O$$8O+$?ZI7?=+??+~:\n"
art_32: .asciz "MZ88D8NN8NNNMDMMMMMMMMMMMMMMMMMNMNDD8MNMMONN8MDNOO8DD8D88NNODOODZ88ZZ$$7?+++++:,\n"
art_33: .asciz "MMMMMMMMNNNNMMMMMMMMMMMMMMMMMMMNNDONNMMNNDD8NN8MMD8MMNM88OOZDDD888Z8O7ZZI$$?=:::\n"