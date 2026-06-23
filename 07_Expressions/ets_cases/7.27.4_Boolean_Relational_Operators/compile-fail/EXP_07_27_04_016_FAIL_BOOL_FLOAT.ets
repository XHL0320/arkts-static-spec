/**
 * @id EXP_07_27_04_016_FAIL_BOOL_FLOAT
 * @expect compile-fail
 * @section 7.27.4
 * @design 验证 boolean 与 float 混合比较产生编译时错误
 * @note 反向用例：boolean/float 类型混用应拒绝编译
 */
let a: boolean = true;
let b: float = 1.0;
let r: boolean = a < b;
