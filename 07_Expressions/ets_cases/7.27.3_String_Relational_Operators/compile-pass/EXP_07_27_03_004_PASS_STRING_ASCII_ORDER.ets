/**
 * @id EXP_07_27_03_004_PASS_STRING_ASCII_ORDER
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证ASCII字符顺序（数字<大写字母<小写字母）的四个关系运算符编译通过
 * @note 正向用例：数字"0"、大写"A"、小写"a"使用<、<=、>、>=均编译通过
 */
let digit: string = "0";
let upper: string = "A";
let lower: string = "a";
let r1: boolean = digit < upper;
let r2: boolean = digit <= upper;
let r3: boolean = digit > upper;
let r4: boolean = digit >= upper;
let r5: boolean = upper < lower;
let r6: boolean = upper <= lower;
let r7: boolean = upper > lower;
let r8: boolean = upper >= lower;
let r9: boolean = digit < lower;
let r10: boolean = "0" < "A";
