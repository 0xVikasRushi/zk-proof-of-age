pragma circom  2.0.5;

include "../node_modules/circomlib/circuits/comparators.circom";

template AgeCheck() {

    // Declaration of signals.
    signal input age;

    signal input ageLimit;
    signal output isAgeAboveLimit;

    component greaterThan = GreaterEqThan(7); //  ? work with 7 bit number 0 to 2^7-1 = 127
    // ? max age is 127
    greaterThan.in[0] <== age;
    greaterThan.in[1] <== ageLimit;
    isAgeAboveLimit <== greaterThan.out;

}


component  main  {public  [ageLimit]}= AgeCheck ();