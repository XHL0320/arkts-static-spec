/**
 * @id EXP_07_27_03_005_PASS_STRING_EQUAL
 * @expect compile-pass
 * @section 7.27.3
 * @design 验证相同字符串比较编译通过
 * @note 正向用例：相同字符串比较，<=和>=返回true（相等情况）
 */
let a: string = "abc";
let r1: boolean = a < a;
let r2: boolean = a <= a;
let r3: boolean = a > a;
let r4: boolean = a >= a;
let r5: boolean = "xyz" < "xyz";
let r6: boolean = "xyz" <= "xyz";
let r7: boolean = "xyz" > "xyz";
let r8: boolean = "xyz" >= "xyz";
