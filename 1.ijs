+/(*"0(0=3&|)+.0=5&|) i.10000

.NB Hook and Fork
.NB (0=3&|) +. 0=5&| is a fork that should receive i.10000 to the right
.NB The result of that is a array which is 1 if the number is divisible by 5 or 3,
.NB and 0 if it isn't. To get the values of these numbers, each element has to be
.NB multiplied by the respective entry in i.10000, and the hook does just that.
.NB It gets i.10000 to the right, applies the fork, and then applies *"0 with the
.NB array and the original i.10000. All that is left is summation with +/