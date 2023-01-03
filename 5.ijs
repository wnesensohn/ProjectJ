NB. 2520 can be evenly divided by 1 to 10
NB. what is the smallest number which can be evenly divieded by 1 to 20?

NB. using remainder | and do-while ^:()^:_
hasRemainder =: dyad : '0 < +/ ((}. i.x) | ]) y'
20&+^:(20& hasRemainder)^:_ (20)

NB. a bit shorter, using LCM *.
*./(1+i.20)
