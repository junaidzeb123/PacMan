INCLUDE Irvine32.inc
INCLUDE macros.inc

.data
ground BYTE "------------------------------------------------------------------------------------------------------------------------",0

mazePositionXForHorizontalLine8 byte 2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 3 dup(4,5,6,7,8,9,10,11,12,13)
mazePositionYForHorizontalLine8 byte 17 dup(1),17 dup(24),10 dup(13),10 dup(8),10 dup(18)
mazePositionXForVerticalLine8   byte 18 dup(1),18 dup(0),18 dup(16),18 dup(17)
mazePositionYForVerticalLine8   byte 4 dup(3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21)


mazePositionXForHorizontalLine7 byte 1 dup(0,1,2,3,4,5,6,8,11,12,13,14,15),18 dup(16),18 dup(17),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)          
mazePositionYForHorizontalLine7 byte 14 dup(1),2 dup(3,4,5,7,8,9,10,11,12,14,15,16,17,18,20,21,22),17 dup(1),17 dup(24)

mazePositionHorizontalXFor9 byte  2 dup(1,2,5,6,7,8,9,10,13,14,15),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
mazePositionHorizontalYFor9 byte  12 dup(1),12 dup(10),15 dup(1),15 dup(24)

mazePositionVerticalXFor9 byte  16 dup(16),16 dup(17),5 dup(0),5 dup(1)
mazePositionVerticalYFor9 byte  2 dup(5,6,7,9,10,11,12,13,15,16,17,18,19,21,22,23),2 dup(4,5,6,7,8)

mazePositionHorizontalXFor4 byte 1 dup(0,1,4,5,6,7,8,9,10,11,12,15,16),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
mazePositionHorizontalYFor4 byte  13 dup(10),15 dup(1),15 dup(24)

mazePositionVerticalXFor4 byte   18 dup(16), 18 dup(17),8 dup(0),8 dup(1)
mazePositionVerticalYFor4 byte   2 dup(3,4,5,7,8,9,10,11,12,14,15,16,17,18,19,21,22,23),2 dup(3,4,5,6,7,8,9,10)
            ;----------------------------------------------------------------------------------------------;

mazePositionXForHorizontalLine8b byte 2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), 3 dup(4,5,6,7,8,9,10,11,12,13)
mazePositionYForHorizontalLine8b byte 17 dup(1),17 dup(24),10 dup(13),10 dup(8),10 dup(18)
mazePositionXForVerticalLine8b   byte 18 dup(1),18 dup(0),18 dup(16),18 dup(17)
mazePositionYForVerticalLine8b   byte 4 dup(3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21)


mazePositionXForHorizontalLine7b byte 1 dup(0,1,2,3,4,5,6,8,11,12,13,14,15),18 dup(16),18 dup(17),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)          
mazePositionYForHorizontalLine7b byte 14 dup(1),2 dup(3,4,5,7,8,9,10,11,12,14,15,16,17,18,20,21,22),17 dup(1),17 dup(24)

mazePositionHorizontalXFor9b byte  2 dup(1,2,5,6,7,8,9,10,13,14,15),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
mazePositionHorizontalYFor9b byte  12 dup(1),12 dup(10),15 dup(1),15 dup(24)

mazePositionVerticalXFor9b byte  16 dup(16),16 dup(17),5 dup(0),5 dup(1)
mazePositionVerticalYFor9b byte  2 dup(5,6,7,9,10,11,12,13,15,16,17,18,19,21,22,23),2 dup(4,5,6,7,8)

mazePositionHorizontalXFor4b byte 1 dup(0,1,4,5,6,7,8,9,10,11,12,15,16),2 dup(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
mazePositionHorizontalYFor4b byte  13 dup(10),15 dup(1),15 dup(24)

mazePositionVerticalXFor4b byte   18 dup(16), 18 dup(17),8 dup(0),8 dup(1)
mazePositionVerticalYFor4b byte   2 dup(3,4,5,7,8,9,10,11,12,14,15,16,17,18,19,21,22,23),2 dup(3,4,5,6,7,8,9,10)
            ;----------------------------------------------------------------------------------------------;
GameName   BYTE "  _______    ______    ______    ______    ______   __       __",0
           BYTE "|       \  /      \  /      \  /      \  /      \ |  \     /  \",0
           BYTE "| $$$$$$$\|  $$$$$$\|  $$$$$$\|  $$$$$$\|  $$$$$$\| $$\   /  $$",0
           BYTE "| $$__/ $$| $$__| $$| $$   \$$| $$__| $$| $$___\$$| $$$\ /  $$$",0
           BYTE "| $$    $$| $$    $$| $$      | $$    $$ \$$    \ | $$$$\  $$$$",0
           BYTE "| $$$$$$$ | $$$$$$$$| $$   __ | $$$$$$$$ _\$$$$$$\| $$\$$ $$ $$",0
           BYTE "| $$      | $$  | $$| $$__/  \| $$  | $$|  \__| $$| $$ \$$$| $$",0
           BYTE "| $$      | $$  | $$ \$$    $$| $$  | $$ \$$    $$| $$  \$ | $$",0
           BYTE " \$$       \$$   \$$  \$$$$$$  \$$   \$$  \$$$$$$  \$$      \$$",0ah,0  

            ;..................................................................................
  permutations BYTE  0,15,30,45,0,15,45,30,0,30,15,45,0,30,45,15,0,45,15,30,0,45,30,15,15,0,30,45,15,0,45,30,15,30,0,45
    permutationsb  byte 15,30,45,0,15,45,0,30,15,45,30,0,30,0,15,45,30,0,45,15,30,15,0,45,30,15,45,0,30,45,0,15,30,45,15,0
    permutationsc  byte 45,0,15,30,
                        45,0,30,15,
                        45,15,0,30,
                        45,15,30,0,
                        45,30,0,15,
                        45,30,15,0


    permutations2 BYTE  60,75,90,105,
                        60,75,105,90,
                        60,90,75,105,
                        60,90,105,75,
                        60,105,75,90,
                        60,105,90,75,
                        75,60,90,105,
                        75,60,105,90,
                        75,90,60,105,
                        75,90,105,60,
                        75,105,60,90,
                        75,105,90,60
   permutations2b  byte 90,60,75,105,
                        90,60,105,75,
                        90,75,60,105,
                        90,75,105,60,
                        90,105,60,75,
                        90,105,75,60,
                        105,60,75,90,
                        105,60,90,75,
                        105,75,60,90,
                        105,75,90,60,
                        105,90,60,75,
                        105,90,75,60
;..................................................................................
;   GHOSTS 
ghostsX        BYTE 10,30,60,90,110
ghostsY        BYTE 2,2,2,2,2
ghosts_Letter  BYTE "G",0
ghosts_Letter1 BYTE "G",0
ghosts_Letter2 BYTE "G",0
ghosts_Letter3 BYTE "N",0
ghosts_Letter4 BYTE "C",0
ghosts_nextPosition byte 4 dup(2)   ;0 up , 1 down ,2 left,3 right
distance       WORD 4 dup(0)
direction      BYTE 5 dup(0)
eatablesx      BYTE 4000 dup(0)
dotsCount      DWORD   0
;......................................
ground1        BYTE "|",0ah,0
ground2        BYTE "|",0ah,0ah,0,"|",0ah,0ah,0,"|",0ah,0ah,0,"|",0ah,0ah,0
score          DWORD 0
xPos           BYTE 50
yPos           BYTE 28
mul2           BYTE 0
mazeByte       BYTE "*",0
;.................................
EnterPlayerName BYTE  "ENTER NAME:",0
PlayerName      BYTE  20 dup(?)
NOofLife        BYTE  3
inputChar       BYTE  ?
count           DWORD 0 
startTime       DWORD 0
ElaspedTime     DWORD 0
Level           DWORD 1
powerUp         BYTE  0
powerUPTime     DWORD 0
delayTime       DWORD 80
GhostsTime      DWORD 0
GhostsDelayTime DWORD 200
PlayerTime      DWORD 0
PlayerDelayTime DWORD 10
PreviouKey      BYTE ?
;.................................
filename        BYTE  "Scoring.txt", 0
buffer          BYTE  1000 dup(?)    ; Buffer to hold file content
sizeofBuffer    DWORD  0
fileHandle      HANDLE ?
scorestring     BYTE   10 dup(0)
playerNameSize  DWORD  0

.CODE
main PROC
       
        mov ebx,0
        call FirstPage
        call SeconedPage
        cmp al,"e"         ;if user enter e in second pagee
        je exitGame
        StartingTheGame:
        call drawingtheGhost
        call DrawInitialFrame
        call DrawPlayer
        call Randomize
        call drawDots
        call mazeDraw
        call mazeDraw2 
        call GetMseconds
        mov dh,0
        mov dl,100 
        call gotoxy
        mov startTime,eax   
        cmp level,1
        jle noFruitsAvailable
        call AddingFruits
        noFruitsAvailable:
      ; mov dotsCount,13
;       GAME LOOP START HERE
        mov eax,1000
        call delay
    gameLoop:

        cmp NOofLife,0
        jle LosingAllLives
        mov  eax,delaytime
        call Delay
        call DealthofPlayer
        call redrawingthGhosts
        call movingtheghosts
        call drawingtheGhost
        call WritingofMainScreen           
        call playerMovement    
        call ReadKey

        mov inputChar,al
        cmp inputChar,"x"    ; exit game if user types 'x':
        je exitGame
  
        cmp dotsCount,0
        jle LevelClear
            
        cmp inputChar,"p"
        je pausingTheScreen
        mov dh,255
        mov dl,255
        call gotoxy

        jmp gameLoop

        ;       GAME LOOP ENDS HERE
        pausingTheScreen:
        mov dh,0
        mov dl,80
        call gotoxy
        mwrite "PRESS R TO RESTART"
        call readchar           
        cmp al,"r"
        je gameLoop
        jmp pausingTheScreen
    LosingAllLives:
    call FileHandling
    call clrscr                                
    call screenAfterLosing
    cmp al,"e"
    je exitGame
    cmp al,"r"
    call RestartTheGame
    jmp StartingTheGame

    LevelClear:
            
        inc level
        cmp level,3
        jg WinningTheGame
        call NextLevel
        jmp StartingTheGame
    WinningTheGame:
    dec level
        call FileHandling
    call CompleterAllLevels
    cmp al,"e"
    je exitGame
    cmp al,"r"
    call RestartTheGame
    jmp StartingTheGame
    exitGame:
    exit
main ENDP 
FirstPage proc   
   
   mov ecx,9
   mov eax,yellow
   mov dh,5
   mov dl,30
   call settextcolor
   mov eax,offset GameName  
   L2:  
        call gotoxy
        push edx
        mov edx,eax
        call writestring
        add eax,64
        pop edx
        add dh,1
   loop l2

   enterPlayingNamela:
   mov dh,15
   mov dl,50
   call gotoxy
   mov edx,offset EnterPlayerName
   call writestring
   mov ecx, 10
   mov edx,offset PlayerName
   call readstring
   mov playerNameSize,eax
   mov ecx,eax
   mov esi,0
   l4:
       mov  al,PlayerName[esi]
      call IsDigit
      jz  nameContainsDigit
      inc esi
   loop l4
   jmp notdigit
   nameContainsDigit:
   mov dh,17
   mov dl,30
   call gotoxy
   mwrite"player name must not container any digit"
   jmp enterPlayingNamela
   notdigit:
   call clrscr
   ret 
FirstPage endp
SeconedPage proc


        ;FOR START
        startofSeconePage:
        call clrscr
        mov dh,2
        mov dl,30
        call gotoxy
       mwrite" ____ _____  _    ____ _____       ____"  
        mov dh,3
        mov dl,30
        call gotoxy
       mwrite"/ ___|_   _|/ \  |  _ \_   _|  _  / ___|" 
        mov dh,4
        mov dl,30
        call gotoxy
       mwrite" ___) || |/ ___ \|  _ < | |    _   ___) |"

        mov dh,5
        mov dl,30
        call gotoxy
       mwrite"|____/ |_/_/   \_\_| \_\|_|   (_) |____/" 
        ;SCORING


        mov dh,7
        mov dl,28
        call gotoxy
        mwrite" ____   ____ ___  ____  ___ _   _  ____        ____" 
        mov dh,8
        mov dl,28
        call gotoxy
        mwrite"/ ___| / ___/ _ \|  _ \|_ _| \ | |/ ___|  _   / ___|"
            mov dh,9
        mov dl,28
        call gotoxy
        mwrite"\___ \| |  | | | | |_) || ||  \| | |  _  (_) | |    "
            mov dh,10
        mov dl,28
        call gotoxy
        mwrite" ___) | |__| |_| |  _ < | || |\  | |_| |  _  | |___" 
            mov dh,11
        mov dl,28
        call gotoxy
        mwrite"|____/ \____\___/|_| \_\___|_| \_|\____| (_)  \____|"

        ;  FOR HELP
            mov dh,13
        mov dl,30
        call gotoxy
       mwrite" _   _ _____ _     ____              _   _ " 
  
        mov dh,14
        mov dl,30
        call gotoxy
       mwrite"| | | | ____| |   |  _ \      _     | | | |"
        mov dh,15
        mov dl,30
        call gotoxy
       mwrite"| |_| |  _| | |   | |_) |    (_)    | |_| |" 
        mov dh,16
        mov dl,30
        call gotoxy
        mwrite"|  _  | |___| |___|  __/      _     |  _  |"  
        mov dh,17
        mov dl,30
        call gotoxy
       mwrite"|_| |_|_____|_____|_|        (_)    |_| |_|"  
        ;FOR EIXT
        mov dh,19
        mov dl,32
        call gotoxy
        mwrite" _______  _____ _____             _____ "
   
        mov dh,20
        mov dl,32
        call gotoxy
        mwrite"| ____\ \/ /_ _|_   _|     _     | ____|"
        mov dh,21
        mov dl,32
        call gotoxy
        mwrite"|  _|  \  / | |  | |      (_)    |  _|  "
        mov dh,22
        mov dl,32
        call gotoxy
       mwrite"| |___ /  \ | |  | |       _     | |___ "
        mov dh,23
        mov dl,32
        call gotoxy
        mwrite"|_____/_/\_\___| |_|      (_)    |_____|"

        
        l1:
        call ReadChar
        cmp al, "h"
        je instructionPage
        cmp al,"e"
        je exitTheGame 
        cmp al, "s"
        je startTheGame
        cmp al,"c"
        je showscoring

        jmp l1
        
        startTheGame:
        call clrscr
        ret

        exitTheGame:

        call clrscr
        ret

        instructionPage:
        call InscturctionPage   
        cmp al,"s"
        je startTheGame
        cmp al,"b"
        je startofSeconePage

        showscoring:
        cmp al,"c"
        call HighScoringScreen
        jmp startofSeconePage

ret 
SeconedPage endp
InscturctionPage proc
                call clrscr
                mov dh,2
                mov dl,20
                call gotoxy
                mwrite "1.OBJECTIVE: "

                mov dh,3
                mov dl,27
                call gotoxy
                mwrite "->Eat all the pellets while avoiding ghosts to advance to the next level."
       
                mov dh,5
                mov dl,20
                call gotoxy
                mwrite "2.Controls:"
         
                mov dh,6
                mov dl,27
                call gotoxy
                mwrite "-> Use A,W,S and D to navigate thought maze."

                mov dh,7
                mov dl,27
                call gotoxy
                mwrite "-> Press P to pause the game."

                mov dh,8
                mov dl,27
                call gotoxy
                mwrite "-> Press x to quit the game."

        
                mov dh,10
                mov dl,20
                call gotoxy
                mwrite "3.GAME ELEMENTS:"
                mov dh,11
                mov dl,27
                call gotoxy
                mwrite "-> Pellets: Collect  to score points. "

                mov dh,12
                mov dl,27
                call gotoxy
                mwrite "->Power Pellets: Temporarily allow Pacman to eat ghosts for bonus points. "
      
                mov dh,13
                mov dl,27
                call gotoxy
                mwrite "->Ghosts:  Avoid contact, but when powered up, Pacman can eat them for a short time. "
      
                mov dh,15
                mov dl,20
                call gotoxy
                mwrite "4. SCORING: "

                mov dh,16
                mov dl,27
                call gotoxy
                mwrite "->Each pellet: 01 points."
        
                mov dh,17
                mov dl,27
                call gotoxy
                mwrite "->Each ghost eaten (while powered up): 100, 200, 400, 800 points"
        
                mov dh,23
                mov dl,35
                call gotoxy
                mwrite "BACK : B"

                mov dh,23
                mov dl,70
                call gotoxy
                mwrite "START : S"

                l1:
                    call readchar
                    cmp al,"s"
                    je start
                    cmp al,"b"
                    je back1
                jmp l1
                back1:
                start:
                call clrscr 
ret 
InscturctionPage endp
DealthofPlayer proc

    push eax
    push ecx
    push esi
    cmp level,3
    jne not3rdLevel
    mov ecx,5
    jmp thirdLevel
    not3rdLevel:
    mov ecx,3
    thirdLevel:
    mov esi,0
    mov al,xpos
    mov ah,Ypos
    l1:
        cmp ecx,0
        jle outofloop
        cmp al,ghostsX[esi]
        jne noPromble
        cmp ah,ghostsY[esi]
        jne noPromble
        push eax
        push ecx
        call UpdatePlayer
        pop ecx
        pop eax
        mov xpos,50
        mov Ypos,27
        push eax
        push ecx
        call redrawingthGhosts
        pop ecx
        pop eax
        mov ghostsx[0],10
        mov ghostsx[1],50
        mov ghostsx[2],110
        mov ghostsY[0],2
        mov ghostsY[1],2
        mov ghostsY[2],2
        cmp level,3
        jne not3rd
         mov ghostsx[0],10
        mov ghostsx[1],30
        mov ghostsx[2],50
        mov ghostsx[3],70
        mov ghostsx[4],100
        mov ghostsY[0],2
        mov ghostsY[1],2
        mov ghostsY[2],2
        mov ghostsY[3],2
        mov ghostsY[4],2
        not3rd:
        cmp powerUP,1
        je powerUpMode
        dec NOofLife
        jmp nopowerUP
        powerUpMode:
        add score,100
        nopowerUP:
        push eax
        push ecx
        call drawingtheGhost
        pop ecx
        pop eax
        push eax
        push ecx
        call DrawPlayer
        pop ecx
        pop eax
        noPromble:
        inc esi
        dec ecx
    jmp l1
    outofloop:
    pop esi
    pop ecx
    pop eax
ret
DealthofPlayer endp
redrawingthGhosts proc

    
    push eax
    push ebx
    push esi
    mov eax,yellow + (black*16)
    call settextcolor
    cmp level,3
    jne not3rdLevel
    mov ecx,5
    jmp thirdLevel
    not3rdLevel:
    mov ecx,3
    thirdLevel:
     mov esi,0
    redrawingthGhostsloop:
        mov eax,0
        mov ebx,0    
        mov al,ghostsy[esi] ;row no
        mov bl,ghostsx[esi] ;col no
        mov dh,al
        mov dl,bl
        call gotoxy
        push esi
        mov esi,offset eatablesx
        imul eax,117
        add esi,eax
        add esi,ebx
        cmp byte ptr [esi],0
        je printspace
        cmp byte ptr [esi],1
        je printdot
        mov eax,red + (black*16)
        call settextcolor
        mwrite "@"
        jmp ok1
        printdot:
        mwrite "."
        jmp ok1
        printspace:
        mwrite " "
        ok1:
        pop esi
        inc esi
    loop redrawingthGhostsloop
     
    pop esi
    pop ebx
    pop eax
 
ret
redrawingthGhosts endp
drawingtheGhost proc
    push eax
    push ecx
    push esi
    mov ecx,3
    mov esi,0
   ; mov eax,black + (red*16)
    mov eax,red + (black*16)
    call setTextcolor
    cmp level,3
    jne not3rdLevel
    mov ecx,5
    jmp thirdLevel
    not3rdLevel:
    mov ecx,3
    thirdLevel:
    mov eax,red + (black*16)
    L1:
        mov dl,ghostsX[esi]
        mov dh,ghostsY[esi]
        call gotoxy
        cmp esi,0
        je L0
        cmp esi,1
        je L2
        cmp level,3
        jne l3
        cmp esi,2
        je l3
        cmp esi,3
        je l4

        mov edx, offset ghosts_Letter4
        jmp exit2
        l4:
        mov edx, offset ghosts_Letter3
        jmp exit2
        l3:
        mov edx, offset ghosts_Letter2
        jmp exit2
        l2:
        mov edx, offset ghosts_Letter1
        jmp exit2
        L0:
        mov edx, offset ghosts_Letter

        jmp exit2
        exit2:
        call writestring
        inc esi
    loop l1
    pop esi
    pop ecx
    pop eax
ret
drawingtheGhost endp
movingtheghosts proc 
    push edx
    push edi
    push ebx
    push eax
    push ecx
    push esi
    call GetMseconds
    sub eax,GhostsTime
    cmp eax,GhostsDelayTime
    jle TiMeLess
    call GetMseconds
    mov GhostsTime,eax
    mov esi,0
    cmp level,3
    jne not3rdLevel
    mov ecx,5
    jmp thirdLevel
    not3rdLevel:
    mov ecx,3
    thirdLevel:
    storingGrabage:
    mov  direction[esi],5
    inc esi
    loop storingGrabage

    cmp level,3
    jne not3rdLevel1
    mov ecx,5
    jmp thirdLevel1
    not3rdLevel1:
    mov ecx,3
    thirdLevel1:

    mov esi,0
    mov eax,0
    mov ebx,0
    mov edx,0
    L1:
        
        cmp ecx,0
        jle exit2
        mov esi,0
        push ecx
        mov ecx,4
        garbageofNextP:
            mov ghosts_nextPosition[esi],0
            inc esi
        loop garbageofNextP
        pop ecx
        dec ecx
        mov count,ecx
        mov ecx,4
        mov esi,0
        mov edi,0
        push edx
        ;mov edx,0
        ;mov edx,esi
       l2: 
        ; calculating that in which direction the movements for ghosts are available. storing the 1 in ghost_nextMovenmenat[esi] if availabe 
            push esi
            cmp ecx,0
            jle ouoofjmpl2
            mov eax,0
            mov ebx,0
            mov bl,ghostsX[edx]
            mov al,ghostsY[edx]
            cmp bl,xpos
            jne notthesame
            cmp al,Ypos
            je TheGhostAndPlayer
            notthesame:
            cmp ecx,4
            jne l3
            dec al
            jmp exit1
            l3:
            cmp ecx,3
            jne l4
            inc al
            jmp exit1
            l4:
            cmp ecx,2
            jne l5
            dec bl
            jmp exit1
            l5:
            inc bl
            exit1:  
            cmp al,1
            jle movementnotAvailble
            cmp bl,0
            jle movementnotAvailble
            cmp al,29
            jge movementnotAvailble
            cmp bl,125
            jge movementnotAvailble
            ;.............  for the Checking of position of othere ghosts   .................
            push ecx
            push eax
            push esi
            cmp level,3
            mov ecx,5
            cmp level,3
            je okthisisThid
            mov ecx,3
            okthisisThid:
            mov esi,0
            checkingForOtherGhosts:
                cmp ecx,0
                jle GhostsareChecked
                cmp ghostsX[esi],bl
                jne endofThisloop
                cmp ghostsY[esi],al
                jne endofThisloop
                pop esi
                pop eax
                pop ecx
                jmp movementnotAvailble
                endofThisloop:
                inc esi
                dec ecx
            jmp checkingForOtherGhosts    
            GhostsareChecked:
            pop esi
            pop eax
            pop ecx
            push esi
            mov esi,offset eatablesx
            push eax
            imul eax,117
            add esi,eax
            add esi,ebx
            pop eax
            cmp byte ptr [esi],2
            pop esi
            je movementnotAvailble     
          
            
            ;***** now we will calculate the distances from each of the left,right,up and down point to distance of player. 
           
           
            push ax
            push bx
            call caculateDistance ;returns distance in ax
            mov distance[edi],ax
            mov ghosts_nextPosition[esi],1
            jmp ok1
            movementnotAvailble:
            mov distance[edi],50000
            mov ghosts_nextPosition[esi],0
           ; mov direction[esi],5
            ok1:
              pop esi
           inc esi 
            add edi,2
             dec ecx 
       jmp l2
       ouoofjmpl2:
       TheGhostAndPlayer:
       pop esi
       pop edx
       ;now storing the value of direction of next movements in direction array 0 up,1 down , 2 left, 3 right
       mov ecx,4
       push esi
       mov esi,0
       mov eax,0
       mov ebx,0
       L6:
          
         cmp ghosts_nextPosition[ebx],0
         je movementnotAvailble2
         cmp  direction[edx],5
         jne comparingtwithOthers
         mov direction[edx],bl
         jmp ok2
         comparingtwithOthers:
         push ebx
         mov al,direction[edx]
         mov mul2,2
         mul mul2
         
         mov si,distance[eax]
         mov eax,ebx
         mul mul2
         mov ebx,eax
         cmp si,distance[ebx]
         pop ebx
         jle noNeed
         mov direction[edx],bl
         ok2:
         movementnotAvailble2:
         noNeed:
         
         inc ebx
       loop l6

       
       ;no acutal movemnte of ghosts

        cmp direction[edx],4
        jge nomement
        cmp direction[edx],3 
        je direction3
        cmp direction[edx],2 
        je direction2
        cmp direction[edx],1 
        je direction1
        cmp direction[edx],0
        je direction0
        direction3:
        inc ghostsX[edx]
        jmp nomement
        direction2:
        dec ghostsX[edx]
        jmp nomement
        direction1:
        inc ghostsY[edx]
        jmp nomement
        direction0:
        dec ghostsY[edx]
        jmp nomement

        nomement:
              
      
       pop esi 
       mov ecx ,count
       inc edx
    jmp l1

    exit2:
     TiMeLess:
     pop esi
    pop ecx
    pop eax
    pop ebx
    pop edi
    pop edx
ret
movingtheghosts endp
caculateDistance proc
    
    ;push eax
    push ebx
    push ecx

    mov eax,0
    mov ax,[esp+14]
    mov bx,[esp+12]
    ;distance formula applying
    sub bl,xpos
    sub al,ypos
    imul al
    mov cx,ax
    mov al,bl
    imul al
    add ax,cx
    ;distance formula end distance in in ax
    pop ecx
    pop ebx
   ; pop eax
ret 4
caculateDistance endp
mazeDraw proc
    call randomize
    mov eax,24
    call randomrange    
    mov bl,4
    mul bl
    mov ecx,eax
    mov al,permutations[ecx]
    mov ah,permutations[ecx+1]
    mov bh,permutations[ecx+2]
    mov bl,permutations[ecx+3]
    add al,2
    add bl,4
    add ah,6
    add bh,8

    mov ecx,eax
    mov eax,white + (white*16)
    call settextcolor
    mov eax,ecx
    ;for lavel one  the digit 8
    mov edi,lengthof mazePositionXForHorizontalLine8
    mov edi,lengthof mazePositionYForHorizontalLine8
    mov ecx,lengthof mazePositionXForHorizontalLine8
    mov edi,0
    mov esi,0
    l1:
        add mazePositionXForHorizontalLine8[esi],al
        mov dl,mazePositionXForHorizontalLine8[esi]
        add mazePositionYForHorizontalLine8[esi],2
        mov dh,mazePositionYForHorizontalLine8[esi]
        cmp dl,1
        jle no1
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring

        jmp nob1
        no1:
        nob1:
        sub mazePositionXForHorizontalLine8[esi],al
        sub mazePositionYForHorizontalLine8[esi],2
        inc esi
    loop l1


    mov edi,lengthof mazePositionXForVerticalLine8
    mov edi,lengthof mazePositionYForVerticalLine8
    ;for lavel one  the digit 8
    mov ecx,lengthof mazePositionXForVerticalLine8
    mov edi,0
    mov esi,0
    l2:
         add mazePositionXForVerticalLine8[esi],al
        mov dl,mazePositionXForVerticalLine8[esi]
        add mazePositionYForVerticalLine8[esi],2
        mov dh,mazePositionYForVerticalLine8[esi]
        cmp dl,1
        jle no2
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        jmp nob2
        no2:
        nob2:
         sub mazePositionXForVerticalLine8[esi],al
         sub mazePositionYForVerticalLine8[esi],2
        inc esi
    loop l2

    ;for 7
    mov esi,0
    mov ecx,lengthof mazePositionXForHorizontalLine7
    L6:
        add mazePositionXForHorizontalLine7[esi],bl
        mov dl,mazePositionXForHorizontalLine7[esi]
        add mazePositionYForHorizontalLine7[esi],2
        mov dh,mazePositionYForHorizontalLine7[esi]
         cmp dl,1
        jle no3
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        jmp nob3
        no3:
        nob3:
        sub mazePositionXForHorizontalLine7[esi],bl
        sub mazePositionYForHorizontalLine7[esi],2
        inc esi
    loop l6

     mov esi,0
    mov ecx,lengthof mazePositionHorizontalXFor9
    L7:
        add mazePositionHorizontalXFor9[esi],ah
        mov dl,mazePositionHorizontalXFor9[esi]
        add mazePositionHorizontalYFor9[esi],2
        mov dh,mazePositionHorizontalYFor9[esi]
        cmp dl,1
        jle no4
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        jmp nob4
        no4:
        nob4:
         sub mazePositionHorizontalXFor9[esi],ah
        mov dl,mazePositionHorizontalXFor9[esi]
        sub mazePositionHorizontalYFor9[esi],2
        inc esi
    loop l7

    mov esi,0
    mov ecx,lengthof mazePositionVerticalyFor9
    L8:
        add mazePositionVerticalXFor9[esi],ah
        mov dl,mazePositionVerticalXFor9[esi]
        add mazePositionVerticalYFor9[esi],2
        mov dh,mazePositionVerticalYFor9[esi]
         cmp dl,1
        jle no5
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        jmp nob5
        no5:
        
        nob5:
         sub mazePositionVerticalXFor9[esi],ah
        sub mazePositionVerticalYFor9[esi],2
        inc esi
    loop l8

     
     mov esi,0
    mov ecx,lengthof mazePositionHorizontalXFor4
    L9:
        add mazePositionHorizontalXFor4[esi],bh
        mov dl,mazePositionHorizontalXFor4[esi]
        add mazePositionHorizontalYFor4[esi],2
        mov dh,mazePositionHorizontalYFor4[esi]
         cmp dl,1
        jle no6
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        jmp nob6
        no6:
     
        nob6:
        sub mazePositionHorizontalXFor4[esi],bh
        sub mazePositionHorizontalYFor4[esi],2
        inc esi
    loop l9

    mov ecx,lengthof mazePositionVerticalyFor4
    mov esi,0
    L10:
        add mazePositionVerticalXFor4[esi],bh
        mov dl,mazePositionVerticalXFor4[esi]
        add mazePositionVerticalYFor4[esi],2
        mov dh,mazePositionVerticalYFor4[esi]
         cmp dl,1
        jle no7
        call gotoxy
        call arrangingcointFormap
        mov edx,offset mazeByte
        call writestring
        no7:
         sub mazePositionVerticalXFor4[esi],bh
        sub mazePositionVerticalYFor4[esi],2
        inc esi 
    loop l10
   
 ret
mazeDraw endp
mazeDraw2 proc
    call randomize
    mov eax,24
    call randomrange 
    
    mov bl,4
    mul bl
    mov ecx,eax
    mov al,permutations2[ecx]
    mov ah,permutations2[ecx+1]
    mov bh,permutations2[ecx+2]
    mov bl,permutations2[ecx+3]
    add al,3
    add bl,5
    add ah,7
    add bh,9

    mov ecx,eax
    mov eax,white+ (white*16)
    call settextcolor
    mov eax,ecx
    ;for lavel one  the digit 8
    mov edi,lengthof mazePositionXForHorizontalLine8b
    mov edi,lengthof mazePositionYForHorizontalLine8b
    mov ecx,lengthof mazePositionXForHorizontalLine8b
    mov edi,0
    mov esi,0
    l1:
        add mazePositionXForHorizontalLine8b[esi],al
        mov dl,mazePositionXForHorizontalLine8b[esi]
        add mazePositionYForHorizontalLine8b[esi],2
        mov dh,mazePositionYForHorizontalLine8b[esi]
        call gotoxy
        cmp dl,116 
        jae hlo
        push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hloa2
        hlo:
        hloa2:
        sub mazePositionXForHorizontalLine8b[esi],al
        sub mazePositionYForHorizontalLine8b[esi],2
        inc esi
    loop l1


    mov edi,lengthof mazePositionXForVerticalLine8b
    mov edi,lengthof mazePositionYForVerticalLine8b
    ;for lavel one  the digit 8
    mov ecx,lengthof mazePositionXForVerticalLine8b
    mov edi,0
    mov esi,0
    l2:
         add mazePositionXForVerticalLine8b[esi],al
        mov dl,mazePositionXForVerticalLine8b[esi]
        add mazePositionYForVerticalLine8b[esi],2
        mov dh,mazePositionYForVerticalLine8b[esi]
         cmp dl,116 
        jae hlo1
        call gotoxy
        push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob1
        hlo1:
        hlob1:
        sub mazePositionXForVerticalLine8b[esi],al
        mov dl,mazePositionXForVerticalLine8b[esi]
        sub mazePositionYForVerticalLine8b[esi],2
        inc esi
    loop l2

    ;for 7
    mov esi,0
    mov ecx,lengthof mazePositionXForHorizontalLine7b
    L6:
        add mazePositionXForHorizontalLine7b[esi],bl
        mov dl,mazePositionXForHorizontalLine7b[esi]
        add mazePositionYForHorizontalLine7b[esi],2
        mov dh,mazePositionYForHorizontalLine7b[esi]
         cmp dl,116 
        jae hlo2
        call gotoxy
         push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob2
        hlo2:
        hlob2: 
        sub mazePositionXForHorizontalLine7b[esi],bl
        sub mazePositionYForHorizontalLine7b[esi],2
        inc esi
    loop l6


     mov esi,0
    mov ecx,lengthof mazePositionHorizontalXFor9b
    L7:
        add mazePositionHorizontalXFor9b[esi],ah
        mov dl,mazePositionHorizontalXFor9b[esi]
        add mazePositionHorizontalYFor9b[esi],2
        mov dh,mazePositionHorizontalYFor9b[esi]
        cmp dl,116 
        jae hlo3
        call gotoxy
        push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob3
        hlo3:

        hlob3: 
         sub mazePositionHorizontalXFor9b[esi],ah
        sub mazePositionHorizontalYFor9b[esi],2
        inc esi
    loop l7

    mov esi,0
    mov ecx,lengthof mazePositionVerticalyFor9b
    L8:
        add mazePositionVerticalXFor9b[esi],ah
        mov dl,mazePositionVerticalXFor9b[esi]
        add mazePositionVerticalYFor9b[esi],2
        mov dh,mazePositionVerticalYFor9b[esi]
        cmp dl,116 
        jae hlo4
        call gotoxy
         push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob4
        hlo4:

        hlob4: 
          sub mazePositionVerticalXFor9b[esi],ah
        sub  mazePositionVerticalYFor9b[esi],2
        inc esi 
    loop l8


     mov esi,0
    mov ecx,lengthof mazePositionHorizontalXFor4b
    L9:
        add mazePositionHorizontalXFor4b[esi],bh
        mov dl,mazePositionHorizontalXFor4b[esi]
        add mazePositionHorizontalYFor4b[esi],2
        mov dh,mazePositionHorizontalYFor4b[esi]
         cmp dl,116 
        jae hlo5
        call gotoxy
        push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob5
        hlo5:

        hlob5: 
         sub mazePositionHorizontalXFor4b[esi],bh
        sub mazePositionHorizontalYFor4b[esi],2
       
        inc esi
    loop l9

    mov esi,0
    mov ecx,lengthof mazePositionVerticalyFor4b
    L10:
        add mazePositionVerticalXFor4b[esi],bh
        mov dl,mazePositionVerticalXFor4b[esi]
        add mazePositionVerticalYFor4b[esi],2
        mov dh,mazePositionVerticalYFor4b[esi]
        cmp dl,116 
        jae hlo6
        call gotoxy
        push edx
        mov edx,offset mazeByte
        call writestring
        pop edx
        call arrangingcointFormap
        jmp hlob6
        hlo6:

        hlob6: 
          sub mazePositionVerticalXFor4b[esi],bh
        sub mazePositionVerticalYFor4b[esi],2
        inc esi 
    loop l10

  
ret
mazeDraw2 endp
drawDots proc
    
    mov ecx,2
    mov edi,0
    mov esi,0
    mov eax,white
    call settextcolor
    l1:
        inc count
        inc count
        inc count
        cmp count,117
        jge exit1
        mov ecx,1      
        l2:
            inc ecx 
            inc ecx 
            inc ecx 
            cmp ecx,29
            jge exit2
            mov dh,cl
            mov dl,byte ptr count
            call Gotoxy
            mov al,"."
            call WriteChar
            inc esi
            push eax
            push ebx
            push esi
            mov eax,0
            mov ebx,0
            mov al,dh ;row no
            mov bl,dl ;col no
            mov esi,offset eatablesx
            imul eax,117
            add esi,eax
            add esi,ebx
            cmp byte ptr [esi],1
            je killed
            mov byte ptr [esi],1
            inc dotsCount
            killed:
            pop esi
            pop ebx
            pop eax
         jmp l2
         exit2:
    jmp l1
    exit1:
ret
drawDots endp
playerMovement proc
  
        call GetMseconds
        sub eax,playerTime
        cmp eax,PlayerDelayTime
        jle TiMeLess
        call GetMseconds
        mov playerTime,eax

        call updatePlayer
        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight
        jmp illegalMovement  ;if not any key pressed

        moveUp:
        cmp ypos,2
        jle illegalMovement
        dec yPos
        jmp boundaraychecking

        moveDown:
        cmp ypos,28
        jge illegalMovement
        inc yPos
        jmp boundaraychecking

        moveLeft:
        cmp xpos,1
        jle TelopotaioonPath
        dec xPos
        jmp boundaraychecking

        moveRight:
        cmp xpos,117
        jge TelopotaioonPath
        inc xPos
        jmp boundaraychecking
        boundaraychecking:
        call collisiongCheckingWithMap
        je illegalMovement
        call drawplayer
        jmp exit1


        TelopotaioonPath:
        cmp level,3
        jne notthe3rdLevel
        cmp xpos, 117
        jge movetoLeft
        cmp xpos,1
        jg exit1
        mov xpos,116
        jmp exit1
        movetoLeft:
        mov xpos,2
        jmp exit1
        illegalMovement:

        notthe3rdLevel:
        mov xpos,dl
        mov Ypos,dh
        TiMeLess:
        exit1:
        call eatingtheCoins
        call drawplayer
ret
playerMovement endp
DrawInitialFrame proc
  ; draw ground at (0,29):
    mov eax,white+ (white * 16)
    call SetTextColor
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

  
    mov ecx,27
    mov dh,2
    mov dl,0
    l1:
        call Gotoxy
        mov edx,OFFSET ground1
        call WriteString
        inc dh
    loop l1
     

    mov ecx,27
    mov dh,2
    l2:
        mov dl,119
        call Gotoxy
        mov eax,edx
        mov edx,OFFSET ground1
        call WriteString
        mov edx,eax
        inc dh
    loop l2

ret
DrawInitialFrame  endp
DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"C"
    call WriteChar
    ret
DrawPlayer ENDP
UpdatePlayer PROC
    mov eax,yellow + (black*16)
    call setTextcolor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP
collisiongCheckingWithMap proc
   push ebx
    mov eax,0
    mov ebx,0
    mov al,ypos ;row no
    mov bl,xpos ;col no
    mov esi,offset eatablesx
    imul eax,117
    add esi,eax
    add esi,ebx
    cmp byte ptr [esi],2
    jne killed
    mov al,1
    killed:
   pop ebx
ret 
collisiongCheckingWithMap endp
eatingtheCoins proc
    push eax
    push ebx
    push esi
    mov eax,0
    mov ebx,0
    mov al,ypos ;row no
    mov bl,xpos ;col no
    mov esi,offset eatablesx
    imul eax,117
    add esi,eax
    add esi,ebx
    cmp byte ptr [esi],0
    je killed
    cmp byte ptr [esi],3
    je yespowerUP
    mov byte ptr [esi],0
    inc score
    dec dotsCount
    jmp killed
    yespowerUP:
     mov byte ptr [esi],0
    add score,50
    mov powerUp,1
    call GetMseconds
    mov powerUpTime,eax
    killed:    
    pop esi
    pop ebx
    pop eax
ret
eatingtheCoins endp
arrangingcointFormap proc
    push eax
    push ebx
    push esi
    mov eax,0
    mov ebx,0
    mov al,dh ;row no
    mov bl,dl ;col no
    mov esi,offset eatablesx
    imul eax,117
    add esi,eax
    add esi,ebx
    cmp byte ptr [esi],0
    je killed
    cmp byte ptr [esi],2
    je killed
    mov byte ptr [esi],2
    dec dotsCount
    killed:
    mov byte ptr [esi],2
    pop esi
    pop ebx 
    pop eax
ret
arrangingcointFormap endp
WritingofMainScreen proc
            
            mov eax,yellow + (black*16)
            call setTextcolor
           mov dl,0
            mov dh,0
            call Gotoxy
            mwrite "SCORES : "
            mov eax,score
            call writedec

            mov eax,0
            mov dh,0
            mov dl,20
            call gotoxy
            mwrite "LiVES : "
            mov al,NOofLife
            call writedec

             mov dh,0
            mov dl,40
            call gotoxy
            mwrite "LEVEL : "
            mov eax,level
            call writedec

            mov dh,0
            mov dl,60
            call gotoxy
            mwrite "TIME : "
            call GetMseconds
            sub eax,StartTime
            mov ebx,1000 
            cdq
            div ebx
            mov ebx,eax
            mov eax,0
            mov ax,bx
            call writedec

             mov dh,0
            mov dl,80
            call gotoxy
            mwrite "PRESS P TO PAUSE      "

            cmp powerUP,1
            jne nopowerUP
            
            mov dh,0
            mov dl,105
            call gotoxy
            mwrite "POWER UP : "
            call getMSeconds
            sub eax,powerUPtime
            mov ebx,1000 
            cdq
            div ebx
            mov ebx,eax
            mov eax,0
            mov ax,bx
            call writedec
            cmp eax,20
            jl nopowerUP
            mov powerUP,0
            mov dh,0
            mov dl,105
            call gotoxy
             mwrite "              "
            nopowerUP:
ret 
WritingofMainScreen endp
screenAfterLosing PROC
        call clrscr
        mov dh,3
        mov dl,30
        call gotoxy
        mwrite"__   __              _"   


        mov dh,4
        mov dl,30
        call gotoxy
        mwrite "\ \ / /__  _   _    | |    ___  ___  ___" 

        mov dh,5
        mov dl,30
        call gotoxy
        mwrite " \ V / _ \| | | |   | |   / _ \/ __|/ _ \"

        mov dh,6
        mov dl,30
        call gotoxy
        mwrite "  | | (_) | |_| |   | |__| (_) \__ \  __/"

        mov dh,7
        mov dl,30
        call gotoxy
        mwrite "  |_|\___/ \__,_|   |_____\___/|___/\___|"

        mov dh,10
        mov dl,35
        call gotoxy
        mwrite "YOUR SCORES ARE : "
        mov eax,score
        call writedec

        
        mov dh,12
        mov dl,40
        call gotoxy
        mwrite "NAME : "
        mov edx,offset  playername
        call writestring

        mov dh,14
        mov dl,42
        call gotoxy
        mwrite "RESTART : R "

        mov dh,16
        mov dl,44
        call gotoxy
        mwrite "EXIT : E "

        l1:
        call readchar
        cmp al,"e"
        je exittheGame
        cmp al,"r"
        je RestarteThegame
        jmp l1
        RestarteThegame:
        exittheGame:

ret
screenAfterLosing endp
RestartTheGame PROC
    call clrscr
    mov eax,0
    mov ebx,0
    mov ecx,0
    mov edx,0
    mov esi,0
    mov edi,0
    
    mov score,0
    mov NOofLife,3
    mov ghostsY[0],2
    mov ghostsY[1],2
    mov ghostsY[2],2

    mov ghostsx[0],15
    mov ghostsx[1],20
    mov ghostsx[2],30

    mov xpos,50
    mov ypos,27

    mov NOofLife,3
    mov GhostsTime,0
    mov Level,0
    mov dotsCount,0

    mov ecx,4000
    mov esi,0
    l1: 
        mov eatablesx[esi],0
        inc esi
    loop l1
ret 
RestartTheGame endp
NextLevel PROC
    call clrscr
    mov eax,0
    mov ebx,0
    mov ecx,0
    mov edx,0
    mov esi,0
    mov edi,0
    
   
    mov NOofLife,3
    mov ghostsY[0],2
    mov ghostsY[1],2
    mov ghostsY[2],2

    mov ghostsx[0],10
    mov ghostsx[1],60
    mov ghostsx[2],110

    mov xpos,50
    mov ypos,27

    mov NOofLife,3
    mov GhostsTime,0

    mov dotsCount,0
    mov ecx,4000
    mov esi,0
    l1: 
        mov eatablesx[esi],0
        inc esi
    loop l1
    call clrscr
    cmp level,3
    je level3
  
    mov dh,8
    mov dl,30
    call gotoxy
    mwrite" _     _______     _______ _           ____"  
     mov dh,9
    mov dl,30
    call gotoxy
    mwrite"| |   | ____\ \   / / ____| |      _  |___ \" 
      mov dh,10
    mov dl,30
    call gotoxy
    mwrite"| |   |  _|  \ \ / /|  _| | |     (_)   __) |"
      mov dh,11
    mov dl,30
    call gotoxy
    mwrite"| |___| |___  \ V / | |___| |___   _   / __/" 
      mov dh,12
    mov dl,30
    call gotoxy
    mwrite"|_____|_____|  \_/  |_____|_____| (_) |_____"
    mov GhostsDelayTime,100
    mov PlayerDelayTime,50
    jmp done2
level3:
    mov NOofLife,3
    mov ghostsY[0],2
    mov ghostsY[1],2
    mov ghostsY[2],2
    mov ghostsY[3],2
    mov ghostsY[4],2

    mov ghostsx[0],10
    mov ghostsx[1],30
    mov ghostsx[2],50
    mov ghostsx[3],70
    mov ghostsx[4],100
    mov dh,8
    mov dl,30
    call gotoxy
    mwrite" _     _______     _______ _           _____" 
    mov dh,9
    mov dl,30
    call gotoxy
    mwrite"| |   | ____\ \   / / ____| |      _  |___ /" 
    mov dh,10
    mov dl,30
    call gotoxy
    mwrite"| |   |  _|  \ \ / /|  _| | |     (_)   |_ \" 
    mov dh,11
    mov dl,30
    call gotoxy
    mwrite"| |___| |___  \ V / | |___| |___   _   ___) |"
    mov dh,12
    mov dl,30
    call gotoxy
    mwrite"|_____|_____|  \_/  |_____|_____| (_) |____/" 
    mov GhostsDelayTime,70
    mov PlayerDelayTime,30

    done2:
    mov eax,1500
    call delay
    call clrscr
ret 
NextLevel endp
CompleterAllLevels proc
        call clrscr
        mov dh,3
        mov dl,30
        call gotoxy
        mwrite"__   _____  _   _  __        _____  _   _   _" 
        mov dh,4
        mov dl,30
        call gotoxy
        mwrite"\ \ / / _ \| | | | \ \      / / _ \| \ | | | |"
        mov dh,5
        mov dl,30
        call gotoxy
        mwrite" \ V / | | | | | |  \ \ /\ / / | | |  \| | | |"
        mov dh,6
        mov dl,30
        call gotoxy
        mwrite"  | || |_| | |_| |   \ V  V /| |_| | |\  | |_|"
        mov dh,7
        mov dl,30
        call gotoxy
        mwrite"  |_| \___/ \___/     \_/\_/  \___/|_| \_| (_)"

        mov dh,10
        mov dl,35
        call gotoxy
        mwrite "YOUR SCORES ARE : "
        mov eax,score
        call writedec


        mov dh,12
        mov dl,40
        call gotoxy
        mwrite "RESTART : R "

        mov dh,14
        mov dl,42
        call gotoxy
        mwrite "EXIT : E "

        l1:
        call readchar
        cmp al,"e"
        je exittheGame
        cmp al,"r"
        je RestarteThegame
        jmp l1
        RestarteThegame:
        exittheGame:
ret 
CompleterAllLevels endp
AddingFruits PROC
    push ebx
    mov eax,red
    call setTextcolor
    mov ebx,0
    call randomize
    mov eax,8
    call randomrange
    cmp eax,3
    jge noneddnoadd
    add eax,3
    noneddnoadd:
    mov ecx,eax
    l1:
        mov eax,0
        mov ebx,0
        mov eax,114     ;generating random column for fruits
        call randomrange 
        add eax,2
        mov bl,al

        mov eax,23    ;generating random row for fruits
        call randomrange 
        add eax,2
        push eax
        mov esi,offset eatablesx
        imul eax,117
        add esi,eax
        add esi,ebx
        pop eax
        cmp byte ptr [esi],0
        je killed
        jmp l1
        killed:
        mov dh,al
        mov dl,bl
        mov byte ptr [esi],3
        call gotoxy
        mwrite "@"
    loop l1
    pop ebx
ret
AddingFruits endp
FileHandling proc

    ;reading all the data written before 
    mov edx, OFFSET filename
    call OpenInputFile
    mov fileHandle, eax

    mov eax, fileHandle
    mov edx, OFFSET buffer
    mov ecx, 100
    call ReadFromFile
    mov sizeofBuffer,eax
    cmp sizeofBuffer,6
    jne secondname
    cmp sizeofBuffer,6
    sub sizeofBuffer,6
    secondname:
    mov eax, fileHandle
    call CloseFile
    ;.......................................................................;

    ; Create output file and write PlayerName and Level to it
    mov edx, OFFSET filename
    call CreateOutputFile
    mov fileHandle, eax

    cmp eax, INVALID_HANDLE_VALUE 
    je file_error 

    ; Write buffer to file
    mov eax, fileHandle
    mov ecx,sizeofBuffer
    mov edx, OFFSET buffer
    call WriteToFile


    ; Write PlayerName to file
    mov eax, fileHandle
    mov ecx,playerNameSize
    mov edx, OFFSET PlayerName
    call WriteToFile

    ; Write Level to file
    add level,48
    mov eax, fileHandle
    mov ecx, LENGTHOF Level
    mov edx, OFFSET Level
    call WriteToFile

   mov edi,score
   mov esi, 0       
    l1:
        cmp score, 0  
        je out1       
        mov ax, word ptr score
        mov bx, 10
        cwd
        div bx        ; AX = score / 10 (quotient in AX, remainder in DX)
        add dl, 48        
        mov byte ptr scorestring[esi], dl
        inc esi       
        mov word ptr score, ax  
    jmp l1

out1:
    mov score,edi
    cmp score,0
    jne makeREverse
     mov byte ptr scorestring[0], 48  
     mov byte ptr scorestring[1], 0  
     jmp scoreisZero
    makeREverse:
    mov byte ptr scorestring[esi], 0   
    call ReVerseStringHelper
    scoreisZero:
      ; Write Level to file    
    mov eax, fileHandle
    mov ecx, LENGTHOF scorestring
    mov edx, OFFSET scorestring
    call WriteToFile
    ; Close the file
    mov eax, fileHandle
    call CloseFile
    jmp quit_program
file_error:
    mwrite "Error in file operation"
quit_program:

ret 
FileHandling endp
HighScoringScreen proc
    call clrscr
    mov dh,0
    mov dl,0
    call gotoxy
    mov edx, OFFSET filename
    call OpenInputFile
    mov fileHandle, eax
    ; Read from the file into buffer
    mov edx, OFFSET buffer
    mov ecx, 1000
    call ReadFromFile
    mov esi,offset buffer
    mov dh,5
    mov dl,40
    call gotoxy
    l2: 
             mov dl,40
            call gotoxy    
            cmp byte ptr[esi],65
            jl ReadingisDone

            cmp byte ptr[esi],122
            jg  ReadingisDone

            mov ebx,edx

            ;for name
            mov edx,esi
            L5:
                cmp byte ptr[edx],65
                jl nameisDone

                cmp byte ptr[edx],122
                jg  nameisDone
                mov al,byte ptr[edx] 
                call WriteChar
                inc edx
            jmp l5
          ; for level
              nameisDone:
              mov eax,edx
              mov edx,ebx
              add dl,15
              call gotoxy
              mov ebx,edx
              mov edx,eax
              mov al,byte ptr[edx] 
              call WriteChar
              inc edx
              mov eax,edx

              mov edx,ebx
              add dl,6
              call gotoxy
              mov ebx,edx
              mov edx,eax
          ;for scores
           mov count ,0
              l6:
                    cmp byte ptr[edx],48
                   jl scoresisDone

                   cmp byte ptr[edx],57
                   jg  scoresisDone
                   mov al, byte ptr[edx]
                   call WriteChar
                   inc edx
                   inc count
              jmp l6
              

              scoresisDone:
              mov edx,ebx


             
            l4:
               cmp byte ptr[esi],48
               jl endofword

               cmp byte ptr[esi],57
               jle  thisisletter

                cmp byte ptr[esi],65
                jl endofword

                cmp byte ptr[esi],122
                jg  endofword
               thisisletter:
               inc esi
               
            jmp l4
            endofword:
            mwrite "  "

            
         
            add esi,10
            sub esi,count
            inc dh
            call gotoxy
    jmp l2

    ReadingisDone:
    mov eax, fileHandle
    call CloseFile
     mov dl,100
   mov dh,25
   call gotoxy
   mwrite "BACK : B"
   l1:
       call readchar
       cmp al,'b'
       jne l1
ret
HighScoringScreen endp
ReVerseStringHelper PROC
      mov ecx,esi
      mov esi,0
      mov ax,0
      l1:
        mov al,scorestring[esi]
        push ax
        inc esi
      loop l1

      mov ecx,esi
      mov esi,0
      l2:
        pop ax 
        mov scorestring[esi],al
        inc esi
      loop l2
      
      
ret 
ReVerseStringHelper endp
END main