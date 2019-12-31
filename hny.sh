#!/bin/bash

# Info
COLS=$(tput cols)
LINE=$(tput lines)
SKY1=1
SKY2=0
SKY3=0
SKY4=0
SKY5=0
SKY6=0
SKY7=0
SKY8=0
SKY9=0
SKY10=0


# Functions
add_ld(){
	LINE_DRAW=$(($LINE_DRAW+1))
}

logo_tux(){
	LINE_DRAW=$(($LINE - 22))

	tput setaf 7

	locate $LINE_DRAW 14 ".888888:."; add_ld
    locate $LINE_DRAW 14 "88888.888."; add_ld
    locate $LINE_DRAW 13 ".8888888888"; add_ld
    locate $LINE_DRAW 13 "8· ·88· ·888"; add_ld
    
    locate $LINE_DRAW 13 "8 @ 88 @ 888"; tput setaf 5
    	locate $LINE_DRAW 15 "©"
    	locate $LINE_DRAW 20 "©"; add_ld; tput setaf 7
    
    locate $LINE_DRAW 13 "8:.,::,.:888"; tput setaf 3
    	locate $LINE_DRAW 14 ":.,::,.:"; add_ld; tput setaf 7
    
    locate $LINE_DRAW 12 ".8·::::::·888"; tput setaf 3
    	locate $LINE_DRAW 14 "·::::::·"; add_ld; tput setaf 7
    
    locate $LINE_DRAW 12 "88· ·::· ·888"; tput setaf 3
    	locate $LINE_DRAW 16 "·::·"; add_ld; tput setaf 7
    
    locate $LINE_DRAW 11 ".88--------·888."; add_ld
    locate $LINE_DRAW 9 ".88·---.::.--.:8888."; add_ld
    locate $LINE_DRAW 9 "888.·---:·----··88:88."; add_ld
    locate $LINE_DRAW 7 ".8888·----·--------88:88."; add_ld
    locate $LINE_DRAW 6 ".8888·-----.--------88:888"; add_ld
    locate $LINE_DRAW 6 "·88888-----:--------8:888·"; add_ld
    locate $LINE_DRAW 7 "·.:.88----.-------.::888·"; add_ld; tput setaf 3
    locate $LINE_DRAW 6 ".:::::88---·------.:::::::."; add_ld
    locate $LINE_DRAW 5 ".::::::.8---------.:::::::::"; add_ld
    locate $LINE_DRAW 5 ":::::::::..-----.:::::::::·"; add_ld
    locate $LINE_DRAW 6 "·:::::::::88888:::::::·"; add_ld
    locate $LINE_DRAW 11 "·:::·"; add_ld
    
    LINE_DRAW=$(($LINE_DRAW-6))
    tput setaf 7
        center $LINE_DRAW "hashtag in Linkedin: #ldulivo"; add_ld
    locate $LINE_DRAW 12 "88---·------"
        center $LINE_DRAW "https://www.linkedin.com/in/ldulivo/"; add_ld
    locate $LINE_DRAW 13 "8---------"; add_ld
    locate $LINE_DRAW 14 "..-----"; add_ld
    locate $LINE_DRAW 16 "88888"
        center $LINE_DRAW "FB: Linux y Amigos"; add_ld
        center $LINE_DRAW "https://www.facebook.com/groups/linuxyamigos/"
}

hny(){
	LINE_DRAW=$(($LINE - 15))
	HNY_COL=$(( ($COLS - 30)/2 ))

	locate $LINE_DRAW $HNY_COL "╔╦╗════════╔═╗═════╔╦╗══════"; add_ld
	locate $LINE_DRAW $HNY_COL "║╩╠═╦═╦═╦╦╗║║╠═╦╦╦╗║║╠═╦═╦╦╗"; add_ld
	locate $LINE_DRAW $HNY_COL "║╦║╬║╬║╬║║║║║║╩╣║║║╠╗║╩╣╬║╔╝"; add_ld
	locate $LINE_DRAW $HNY_COL "╚╩╩╩╣╔╣╔╬╗║╚╩╩═╩══╝╚═╩═╩╩╩╝═"; add_ld
	locate $LINE_DRAW $HNY_COL "════╚╝╚╝╚═╝═════════════════"
}

locate(){ 
	LOCATE_LINE=$1
	LOCATE_COL=$2
	LOCATE_TXT=$3
	
	tput cup $LOCATE_LINE $LOCATE_COL
	echo -n $LOCATE_TXT
}

center(){
	LOCATE_LINE=$1
	CENTER_STR_LEN="${#2}"
	CENTER_COL=$(( (COLS - CENTER_STR_LEN) / 2 ))

	tput cup $LOCATE_LINE $CENTER_COL
	echo -n $2
}

rand(){
    echo $(shuf -n 1 -i 10-20)
}

snow(){
    # LINE 10
    if [ $SKY10 -gt 0 ]; then
        # Delete snow LINE 5
        tput setaf 0
        t=$t10

        while [ $t -lt $COLS ]
        do
            tput cup 5 $t
            echo -n "*"
            t=$(($t + $SKY10))
        done 
        tput setaf 7 # End Delete snow LINE 5
        SKY10=0
    fi

    # LINE 9
    if [ $SKY9 -gt 0 ]; then
        SKY10=$SKY9
        t10=$t9
        SKY9=0
    fi

    # LINE 8
    if [ $SKY8 -gt 0 ]; then
        SKY9=$SKY8
        t9=$t8
        SKY8=0
    fi

    # LINE 7
    if [ $SKY7 -gt 0 ]; then
        SKY8=$SKY7
        t8=$t7
        SKY7=0
    fi

    # LINE 6
    if [ $SKY6 -gt 0 ]; then
        # Delete snow LINE 5
        tput setaf 0
        t=$t6

        while [ $t -lt $COLS ]
        do
            tput cup 4 $t
            echo -n "*"
            t=$(($t + $SKY6))
        done 
        tput setaf 7 # End Delete snow LINE 5

        # Print snow LINE 6
        t=$t6

        while [ $t -lt $COLS ]
        do
            tput cup 5 $t
            echo -n "*"
            t=$(($t + $SKY6))
        done
        SKY7=$SKY6
        t7=$t6
        SKY6=0
    fi

    # LINE 5
    if [ $SKY5 -gt 0 ]; then
        # Delete snow LINE 4
        tput setaf 0
        t=$t5

        while [ $t -lt $COLS ]
        do
            tput cup 3 $t
            echo -n "*"
            t=$(($t + $SKY5))
        done 
        tput setaf 7 # End Delete snow LINE 4

        # Print snow LINE 5
        t=$t5

        while [ $t -lt $COLS ]
        do
            tput cup 4 $t
            echo -n "*"
            t=$(($t + $SKY5))
        done
        SKY6=$SKY5
        t6=$t5
        SKY5=0
    fi

    # LINE 4
    if [ $SKY4 -gt 0 ]; then
        # Delete snow LINE 3
        tput setaf 0
        t=$t4

        while [ $t -lt $COLS ]
        do
            tput cup 2 $t
            echo -n "'"
            t=$(($t + $SKY4))
        done 
        tput setaf 7 # End Delete snow LINE 3

        # Print snow LINE 4
        t=$t4

        while [ $t -lt $COLS ]
        do
            tput cup 3 $t
            echo -n "*"
            t=$(($t + $SKY4))
        done
        SKY5=$SKY4
        t5=$t4
        SKY4=0
        SKY1=1
    fi

    # LINE 3
    if [ $SKY3 -gt 0 ]; then
        # Delete snow LINE 2
        tput setaf 0
        t=$t3

        while [ $t -lt $COLS ]
        do
            tput cup 1 $t
            echo -n "·"
            t=$(($t + $SKY3))
        done 
        tput setaf 7 # End Delete snow LINE 2

        # Print snow LINE 3
        t=$t3

        while [ $t -lt $COLS ]
        do
            tput cup 2 $t
            echo -n "'"
            t=$(($t + $SKY3))
        done
        SKY4=$SKY3
        t4=$t3
        SKY3=0
    fi
    
    # LINE 2
    if [ $SKY2 -gt 0 ]; then
        # Delete snow LINE 1
        tput setaf 0
        t=$t2

        while [ $t -lt $COLS ]
        do
            tput cup 0 $t
            echo -n "¨"
            t=$(($t + $SKY2))
        done 
        tput setaf 7 # End Delete snow LINE 1

        # Print snow LINE 2
        t=$t2

        while [ $t -lt $COLS ]
        do
            tput cup 1 $t
            echo -n "·"
            t=$(($t + $SKY2))
        done
        SKY3=$SKY2
        t3=$t2
        SKY2=0
    fi


    # LINE 1
    if [ $SKY1 -gt 0 ]; then
        SKY1=$(rand)
        t1=$(shuf -n 1 -i 1-8)
        t=$t1

        while [ $t -lt $COLS ]
        do
            tput cup 0 $t
            echo -n "¨"
            t=$(($t + $SKY1))
        done

        SKY2=$SKY1
        t2=$t1
        SKY1=0
    fi
}


# Start
tput clear; tput civis # disable cursor

logo_tux
hny

while true; do
    snow
    sleep 0.5

done






