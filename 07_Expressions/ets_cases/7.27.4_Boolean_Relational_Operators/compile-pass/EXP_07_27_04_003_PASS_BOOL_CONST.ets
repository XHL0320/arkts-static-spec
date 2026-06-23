/**
 * @id EXP_07_27_04_003_PASS_BOOL_CONST
 * @expect compile-pass
 * @section 7.27.4
 * @design 验证 const 声明的 boolean 常量之间关系运算编译通过
 * @note 正向用例：const boolean 常量作为操作数
 */
const A: boolean = true;
const B: boolean = false;
let r1: boolean = A < B;
let r2: boolean = A <= B;
let r3: boolean = A > B;
let r4: boolean = A >= B;
let r5: boolean = B < A;
let r6: boolean = B <= A;
