/**
 * @id EXP_07_27_03_006_PASS_STRING_VARIABLES
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证字符串变量比较的所有关系运算符编译通过
 * @note 正向用例：const和let声明的字符串变量使用<、<=、>、>=均编译通过
 */
const c1: string = "hello";
const c2: string = "world";
let v1: string = "alpha";
let v2: string = "beta";
let r1: boolean = c1 < c2;
let r2: boolean = c1 <= c2;
let r3: boolean = c1 > c2;
let r4: boolean = c1 >= c2;
let r5: boolean = v1 < v2;
let r6: boolean = v1 <= v2;
let r7: boolean = v1 > v2;
let r8: boolean = v1 >= v2;
