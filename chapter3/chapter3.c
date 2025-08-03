#include "utils.h"

void question320() { ASS("long arith(long x) {return x / 8;}"); }
void question321() {
  ASS("long test(long x, long y) { long val = 8 * x; if (y > 0) { if (x < y) "
      "val = y - x; else val = x & y; } else if (y <= -2) { val = x + y; } "
      "return val; }")
};

void question324() {
  ASS("long long_while(long a, long b){ long result = 1; while (a < b) { "
      "result *= (a+b); a++; } return result;}");
}
void example322() {
  ASS("long fact_do(long n) { long result = 1; do { result *= n; n = n - 1; } "
      "while (n > 1); return result;}");
}

void question325() {
  ASS_LEVEL(
      "long loop_while2(long a, long b){ long result = b; while (b > 0) { "
      "result *= a; b -= a;} return result; }",
      1);
}

void question326() {
  ASS("long fun_a(unsigned long x) { long val = 0; while (x) { val ^= x; x >>= "
      "1; } return val &= 1; }");
}

void question327() {
  ASS("long fact_for(long n) { long i; long result = 1; for (i = 2; i <= n; "
      "i++) result *= i; return result; }");
  ASS("long fact_for_gd_goto(long n) { long i = 2; long result = 1; if (n <= "
      "1) goto done; loop: result *= i; i++; if (i <= n) goto loop; done: "
      "return result; }");
}

int main() {
  RUN(question320);
  RUN(question321);
  RUN(example322);
  RUN(question324);
  RUN(question325);
  RUN(question326);
  RUN(question327);
}
