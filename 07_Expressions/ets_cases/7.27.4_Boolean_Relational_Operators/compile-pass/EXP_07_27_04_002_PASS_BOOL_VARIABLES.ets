/**
 * @id EXP_07_27_04_002_PASS_BOOL_VARIABLES
 * @expect compile-pass
 * @section 7.27.4
 * @design 验证 let 声明的 boolean 变量之间关系运算编译通过
 * @note 正向用例：let boolean 变量作为操作数
 */
let a: boolean = true;
let b: boolean = false;
let r1: boolean = a < b;
let r2: boolean = a <= b;
let r3: boolean = a > b;
let r4: boolean = a >= b;
let r5: boolean = b < a;
let r6: boolean = b <= a;
