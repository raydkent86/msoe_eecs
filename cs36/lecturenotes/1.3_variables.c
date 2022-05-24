/* VARIABLES
 * 
 * variable = name that is used to assign a value in the memory
 * 
 * Naming Rules:
 * + Cannot include special characters or punctuation, except _
 *   (#, $, ^, ?, & are NOT ALLOWED)
 * + Cannot have two successive underscores
 * + NO KEYWORDS
 * + Sum is not the same as sum (variables are case sensitive)
 * + Must begin with an alphabetical character or an underscore
 * + name should be of reasonable length [goes up to 64 chars,
 *   but DO NOT USE ALL 64, since it only reads the first 31]
 */

// bad variable names -- what the hell are they?
char a;
int b;
long int c;
float x;

// good variable names describe something
double acct_pay = 0;
long double salary, cost, pay;

int roll_number; // perfectly legal
int Dept_code; // legal, just not up to convention
char _HRA[]; // also legal, but not descriptive at all
// short int 23_students; // illegal name
// int #emp_number; // very illegal name

/* IMPORTANT: MAKE SURE TO PAY ATTENTION TO DATA TYPES!!!
 * Do NOT be like ESA with the Ariane V failure in '95, or
 * the Navy back in '98 with the Yorktown!
 * 
 * Not only will you likely lose your job, but you could KILL
 * someone.
 */

// simple data types
int i; // 16-bit integer, -32768 to 32767
float f; // floating point number, -3.4E-34 to 3.4E+34
long int l; // 32-bit integer, -2bn to +2bn
double d; // double-accuracy floating point number, -1.8E-108 
          // to +1.8E+108

/* Normally, just jump to a double when you're coding for 
 * personal computers, but do NOT get in this habit on
 * embedded systems -- you're going to encounter access
 * violations at LIGHTNING SPEED if you do that.
 * 
 * So, whenever possible, use integers over long ints,
 * because they use less memory and are faster.
 */

// character/byte
char c; // a single character
char s[]; // a string

// assignment statements
int age;
age = 25; // assignment statement
// 25 = age; // CANNOT DO THIS!

int a = 10; // declare and assign
int a = 10, b = 20, c = 30; // macro declare/assign

/* MAKE SURE YOUR S*** STAYS READABLE. While the above
 * line is easier, it's gonna be *fricking illegible*
 * to everyone not named "$whoami."
 * 
 * Also, if you think you can do this, you're high: */

// int a = 10, b = 20, c = 30, sum = (a + b + c); // ARGH

// rules for assignment: RIGHT TO LEFT
int main()
{
    int a, b, c, d, e, f, g;
    a = b = c = d = e = f = g = 12;
    printf("%f", wat());
    return 0;
}

/* OPERATORS
 * + addition
 * - subtraction
 * * multiplication
 * / division
 * % modulo (remainder)
 * 
 * ORDER OF OPERATIONS: BODMAS/PEMDAS
 * - stuff in parentheses always first
 * - then * / %
 * - then + -
 * - then =
 * - operators on the same tier are always eval'd
 *   from left to right
 */

double wat(){
    int p, r, q, w, x, y;
    scanf("%d\n", p);
    scanf("%d\n", r);
    double z = p * r % q + w/x - y;
    return z;
}

/* PLACEHOLDERS
 * %d = integers
 * %f = floats/doubles
 * %ld = longs
 * %c = char
 * %s = strings
 * %% = percent symbol [printf("%d%%", a);]
 * %X = uppercase hexadecimal number
 * %x = lowercase hex
 * %o = octal
 */

// FORMATTING OUTPUT
void format(){
    int a = 10;
    float b = 123.46;
    printf("%d\n", a); // 10
    printf("%f\n", b); // 123.460001
    printf("%0.2f\n", b); // 123.46 [2 = precision]
    printf("$%0.2f\n", b); // $123.46
    printf("$%8.2f\n", d); // $  123.46 [8 = width]
}

/* CHARACTER CONSTANTS/ESCAPE SEQUENCES
 * \b = backspace
 * \n = newline
 * \r = return
 * \t = tab
 * \" = print double quote
 * \' = print single quote
 * \\ = print backslash
 * \% = print percent sign
 */
