/**
 * @id EXP_07_27_03_001_PASS_STRING_BASIC
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证字符串四个关系运算符在基本字符串上编译通过
 * @note 正向用例：验证"abc"和"def"使用<、<=、>、>=均编译通过
 */
let a: string = "abc";
let b: string = "def";
let r1: boolean = a < b;
let r2: boolean = a <= b;
let r3: boolean = a > b;
let r4: boolean = a >= b;
