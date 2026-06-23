/**
 * @id EXP_07_27_04_001_PASS_BOOL_BASIC
 * @expect compile-pass
 * @section 7.27.4
 * @design 验证 boolean 四个关系运算符在 true/false 文字量上编译通过
 * @note 正向用例：验证 true/false 使用 < <= > >= 均编译通过
 */
let r1: boolean = false < true;
let r2: boolean = false <= false;
let r3: boolean = true > false;
let r4: boolean = true >= true;
let r5: boolean = false > true;
let r6: boolean = true < false;
