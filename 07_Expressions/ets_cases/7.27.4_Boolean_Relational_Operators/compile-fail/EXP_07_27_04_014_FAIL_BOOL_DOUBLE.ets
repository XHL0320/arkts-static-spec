/**
 * @id EXP_07_27_04_014_FAIL_BOOL_DOUBLE
 * @expect compile-fail
 * @section 7.27.4
 * @design 验证 boolean 与 double 混合比较产生编译时错误
 * @note 反向用例：boolean/double 类型混用应拒绝编译
 */
let a: boolean = true;
let b: double = 1.0;
let r: boolean = a < b;
