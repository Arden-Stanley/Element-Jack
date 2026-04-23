#!/bin/bash
./rmcmt.sh src/Blackjack.elem Blackjack.elem
{ echo "run Blackjack.elem"; cat; } | java -jar ElementLang.jar
# ignore errors when closing jar file. It likes to be tempermental i guess...