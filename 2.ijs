NB. fib verb adapted from https://thatjdanisso.cool/j-fibonacci
NB. The idea is to model the recursive nature of fib using ^:
NB. and applying ],_2&(+/@:{.) recursively starting with 1 1
NB. The fun thing is the ^:()^: thing, which applies the verb
NB. recursively until the condition y >: {: returns false
NB. old attempt: fibs =: verb : '((], _2&(+/@:{.) )^:y) 1 1'
fibs =: verb : '((], _2&(+/@:{.) )^:(y >: {:)^:_) 1 1'

NB. fibs 4000000 builds a list of the fibonacci numbers less or equal
NB. than 4000000
NB. Then this list is fed to (1-2&|) which builds an array with 1 where
NB. the fib is even, and 0 where it isn't
NB. Then the hook with * comes into play, which multiplies this list with
NB. the list of fibonacci numbers. Sum at the end and we're done.
NB. The 8!:0 is just there to change the number format, as otherwise it
NB. it would be written in scientific notation with truncated base
8!:0 +/ (* 1-2&|) fibs 4000000