/**
 * @id EXP_07_27_03_002_PASS_STRING_EMPTY
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证空字符串与普通字符串的四个关系运算符编译通过
 * @note 正向用例：空字符串""和"a"使用<、<=、>、>=均编译通过
 */
let empty: string = "";
let s: string = "a";
let r1: boolean = empty < s;
let r2: boolean = empty <= s;
let r3: boolean = empty > s;
let r4: boolean = empty >= s;
let r5: boolean = empty < empty;
let r6: boolean = empty <= empty;
let r7: boolean = empty > empty;
let r8: boolean = empty >= empty;
