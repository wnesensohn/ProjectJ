NB. fib verb stolen from https://thatjdanisso.cool/j-fibonacci
NB. The idea is to model the recursive nature of fib using ^:
NB. and applying {:,+/ recursively starting with 1 1
fib =: verb : '{: (({:,+/)^:y) 1 1'

NB. fib"0 i.100 builds a list of the first 100 fibonacci numbers
NB. this is an ugly clutch as it generates too many numbers but I don't
NB. know how to prevent that yet (a rough estimate for the nth fibonacci
NB. number would suffice)
NB. Then this list is fed to the fork ((1-2&|) * <&4000000) which
NB. effectively builds a list with 1 when the fibonacci number is even
NB. and under 4 million.
NB. Then the hook with * comes into play, which multiplies this list with
NB. the list of fibonacci numbers. Sum at the end and we're ready.
NB. The 8!:0 is just there to change the number format, as otherwise it
NB. it would be written in scientific notation with truncated base
8!:0 +/ (* ((1-2&|) * <&4000000)) (fib"0 i.100)