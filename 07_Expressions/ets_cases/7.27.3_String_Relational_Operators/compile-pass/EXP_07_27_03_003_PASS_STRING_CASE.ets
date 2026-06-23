/**
 * @id EXP_07_27_03_003_PASS_STRING_CASE
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证字符串大小写比较的四个关系运算符编译通过
 * @note 正向用例：相同字符串不同大小写（"Hello"和"hello"）使用<、<=、>、>=均编译通过
 */
let a: string = "Hello";
let b: string = "hello";
let r1: boolean = a < b;
let r2: boolean = a <= b;
let r3: boolean = a > b;
let r4: boolean = a >= b;
let r5: boolean = "ABC" < "abc";
let r6: boolean = "ABC" <= "abc";
let r7: boolean = "ABC" > "abc";
let r8: boolean = "ABC" >= "abc";
