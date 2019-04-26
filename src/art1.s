.align 2
.data
.global art1
.type art1, %function

.text
art1:
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

     LDR R0,=format
    LDR R1,=art_34
    
    bl printf
    LDR R0,=format
    LDR R1,=art_35
    
    bl printf
    LDR R0,=format
    LDR R1,=art_36
    
    bl printf

    mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {lr}
	bx	lr

.data
format: .asciz "%s"

art_0: .asciz ":~~:~~~:~=~~======+=++=====+=+++?+=?++?+????I???+???+?++++?=+++??+===+++==~=~~~~\n"
art_1: .asciz "::~:~:~~~~~=~~=~===+=====++=?++=+?=+++++?+????++++II???=+~+++??++==+=====~~=~::~\n"
art_2: .asciz "::~:~~~:~~~~=====++=======++=+++++==++?+????+?+I?????++?+??+++==++=++++==~==~=~:\n"
art_3: .asciz "~~~~~~:~~~~==~==+==+==+=++++?+++++++++++?+?+???++?=+?+?++++?=++++=====++=~~=~~~~\n"
art_4: .asciz "~~~~~~~~~=~~~==~=++=====++==+++?+++++????++=+++??+?+?++=++?=++++==++~=====~=~~~~\n"
art_5: .asciz ":~~~~~~~~~~~===~+~=+==+++++++++??+?+++?+??++?+++++++++++=++++++++=+=+====+====~~\n"
art_6: .asciz "::~~~~~~~~~==~====+++===?+?+??+??????I???????++?+??++++++++?++?+++==++?=+======~\n"
art_7: .asciz "~~~~~~=~=~=============+++++???+???+??+++?++?=++?+?+??+++?++=?+?=++=+=++=~=~~===\n"
art_8: .asciz "::~~=~=====+===~+==+=+++++++???+??I?I?+????++???+++?++??++++?++++?+=+=+==++++===\n"
art_9: .asciz "~~~~~~=~~====+===+===++===+?+?+????????++I++?????????+??++++???+++?++++=++=++==~\n"
art_10: .asciz "~~~~~~~:~==+=+=+==+==++~+?+++I?????+?+?????I??+I??I????????+??++?++++?+?=+++++++\n"
art_11: .asciz "~~~~====~~====++===~==++++=????7?II???++??I????+?+?+???+???+?+?+?+++++==+==++++=\n"
art_12: .asciz "~=~=~~~~~~=~===+=++++=~==+++++???I???I+++?????+++?+I?+++?+?+++++??+++=+=+=+++=+=\n"
art_13: .asciz "~~~=~~=~=~=====+++==+=+====++++?+??+???D---++???????+?+?????+?+=?+?+++++=+=====~\n"
art_14: .asciz "~~=~~~~~=~~=========+=++===+=+++????I?MMD----??I??+++???++++?++++??+++=+++====+~\n"
art_15: .asciz "~~=~~==~==~======+=I+=+?===++++++???++MM80?+------???++?+???+???++=++?+++=?=+==~\n"
art_16: .asciz ":~:~~~~~~~=~===========?++=++=+++???++MMMI+MNNOIM------???I+??+++++==+++===++=~=\n"
art_17: .asciz "~~~~~~~~~~~~===~=======+======+++?NMMMMMMMMMNM$MD?MM?------?+++?+?+++++=+===~++=\n"
art_18: .asciz ":~~~~~~~:+~~~~=~=====~88DMMMO=MMNMNNNMMMNMMMMMNMMN?MMMMMM8MMNMDMMNMOMMD7I------+\n"
art_19: .asciz "+==?+?+??MMMMMMMMMMMMMMMMMMMNM8MMMMMMMMNMMMMMMMMMMMMMMMMMMMMMMMMMMMMM8DI?------\n"
art_20: .asciz "--------------------------------------------------------------------------------\n"
art_21: .asciz "7IIIIII?Z$7ZZZI$ZZ$7O$ZI7Z$ZZZ$O8O88O$ZOZZOZOZDZO8ODO8O8$OZZDO$ZZZD7ZOD$7$OZ8?OO\n"
art_22: .asciz "--------------------------------------------------------------------------------\n"
art_23: .asciz "77I$ZO77ZIOI7$$+D$ZO7$???7$7$ZD8Z7$NZO$Z7ZZ$$O$OZZ8$7OOOO8DZ8O8ZN$O77ZO7OOZ87$OI\n"
art_24: .asciz "++??+7IIZ$I?7?I?I???I7III=II+?$7ZO7Z$$I7I7I$7Z$$$$7I$$8DN8N87$Z$ZZO$O$Z$IOOZIOO7\n"
art_25: .asciz "--------------------------------------------------------------------------------\n"
art_26: .asciz "+==~===++++?7I?I?$?I?7+III77$I$$7I$77777$?7$Z$87$8$7I7Z7I$O7OO7$$7$777$8DIIZDZ8I\n"
art_27: .asciz "+=+?=+=?$Z7I+?I++I7ZI+I+?++I?I?77?+?I?IZ7OZD87ZZZDO?$++$I7I7IOIOI?7I$7I77++?Z?$?\n"
art_28: .asciz "$==7O+====+O$?+I+?O77??+?=?777OZ$Z7$8O7?IIZNII7$$$Z$O8O7ZZO$ZII7I??7$+7I=??77$$I\n"
art_29: .asciz "--------------------------------------------------------------------------------\n"
art_30: .asciz "I?I7777IO$Z7DI+$$I7$87I?ZO77$IIII7O77ZD$Z$NZD$8ZOZDIO8OOOOZO8$OMN$$NMN8ZZO8D$OZ8\n"
art_31: .asciz "+7I=$I=?II8Z7$8Z$$III7+??7$I$I$$7$DDO7I$Z8Z8Z88DNOZDDD8$78I$MO8N8ZMM$$NMDM$7IOZ$\n"
art_32: .asciz "?7NI++I??=++OI?IO77D7D77++7IZZII?ZM7I$7D88NOI$D$787OZ8$8Z8OZ8ODI7I7DZ$878I$$$7ZZ\n"
art_33: .asciz "+~~=7$+7+?I7+78$$O$DZ8NNMZOZ$D8OD7ZDDONNNNDDD8Z8M8ZDZZO88N8NNMMOOO$II8$O77OOO78Z\n"
art_34: .asciz "OM7Z+?7D$??DMD8DMOMMNZODM8M8DONZMZDDDNMM8NO7DOMMODNMDMZNN8MMMMMD$ZDMNDZ8ZZO7O$$O\n"
art_35: .asciz "=+$8O=?O+?I?O87$8+O$ZNMMD$8DD?ODZD$OMMNIII7D87$878DMMNN7ZZZN7IZI8MMMZMZDDDOMD888\n"
art_36: .asciz "~+=+==~+I+OII+ZZI$$==??D=8MZZOI88IO7$N7ZION8MMNM$$D8$8MDMNNNMMDMOZ$$IN$ZOOOINZDM\n"