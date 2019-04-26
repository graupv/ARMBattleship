.align 2
.data
.global title_art
.type title_art, %function

.text
title_art:
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

    mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {lr}
	bx	lr

.data
format: .asciz "%s"
art_0: .asciz " ______     ______     __    __   \n"
art_1: .asciz "/\  __ \   /\  == \   /\ \-./  \  \n"
art_2: .asciz "\ \  __ \  \ \  __<   \ \ \-./\ \ \n"
art_3: .asciz " \ \_\ \_\  \ \_\ \_\  \ \_\ \ \_\\n"
art_4: .asciz " ______     ______     ______   ______   __         ______     ______     __  __     __     ______ \n"
art_5: .asciz "/\  == \   /\  __ \   /\__  _\ /\__  _\ /\ \       /\  ___\   /\  ___\   /\ \_\ \   /\ \   /\  == \\n"
art_6: .asciz "\ \  __<   \ \  __ \  \/_/\ \/ \/_/\ \/ \ \ \____  \ \  __\   \ \___  \  \ \  __ \  \ \ \  \ \  _-/\n"
art_7: .asciz " \ \_____\  \ \_\ \_\    \ \_\    \ \_\  \ \_____\  \ \_____\  \/\_____\  \ \_\ \_\  \ \_\  \ \_\  \n"