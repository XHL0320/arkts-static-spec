/**
 * @id NAM_04_06_05_004_PASS_TERNARY_INFER_CONST
 * @expect compile-pass
 * @section 4.6.5
 * @design 三元运算类型推断-const
 * @note 正向用例：验证 const 三元运算类型推断
 */
function cond(): boolean { return Math.random() < 0.5 ? true : false; }
const bb = cond() ? 1 : 2;
const cc = cond() ? 1 : 3.14;
const cc1 = true ? 1 : 3.14;
const cc2 = false ? 1 : 3.14;
const dd = cond() ? "one" : "two";
const dd1 = true ? "one" : "two";
const dd2 = false ? "one" : "two";
const ee = cond() ? 1 : "one";
