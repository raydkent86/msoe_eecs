/* CONVERTING DATA TYPES
 * It is possible, contrary to popular belief, to change values from one data type to another. It tends to
 * work the best with similar sorts of data, but it can be done with basically anything in the basic type
 * arsenal.
 * 
 * Suppose we had the following expression for electrical power:
 *      voltage * current
 * where
 *      int voltage = 5;
 *      float current = 2.5;
 * 
 * What would this evaluate to?
 * 
 * Let's try it and write the code(s). */

#include <stdio.h>

float get_power(int voltage, float current)
{
    /* So what datatype do we actually need?
    As it turns out, implicit type conversions are done automatically by the compiler, and each type
    has a RANK: bool < char < short < int < long < long long < float < double < long double

    Complex types match the floating types as well, so multiplying an int by a float gives a float,
    and adding a char to a long int gives a long int.

    This form of type conversion has NO SIDE EFFECT, meaning all values retain their original type, but
    you get less control over which way things actually go. That means if you decided you wanted to
    truncate a float into an int, you would have to use EXPLICIT type conversion, which is where you
    force a type on an expression with a TYPE CAST.

    The above expression won't give the correct answer unless we type cast the int into a float. That's
    why the technique is demonstrated below: */

    return (float)voltage * current;
}

/* There is also no side effect in typecasting/explicit conversion, so that's often beneficial.
 * If, however, we do want a side effect, we can use the assignment operator to change values because the
 * program will recast things automatically when variables are assigned by virtue of evaluating expressions.
 * 
 * As a result, we have a way to convert stuff around and do calculations when a data type happens to be
 * slightly wrong - it's called the assignment operator, and it'll fix your problems. It's like magic. */

int main()
{
    float p = get_power(5, 2.5);
    printf("Power is %f\n", p);
    return 0;
}
