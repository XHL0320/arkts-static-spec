/**
 * @id NAM_04_06_010_PASS_TERNARY_INFER_LET
 * @expect compile-pass
 * @section 4.6.5
 * @design 三元运算类型推断-let
 * @note 正向用例：验证 let 三元运算类型推断
 */
function cond(): boolean { return Math.random() < 0.5 ? true : false; }
let b_var = cond() ? 1 : 2;
let c_var = cond() ? 3 : 3.14;
let c1 = true ? 3 : 3.14;
let c2 = false ? 3 : 3.14;
let d_var = cond() ? "one" : "two";
let e_var = cond() ? 1 : "one";
let e1 = true ? 1 : "one";
let e2 = false ? 1 : "one";
