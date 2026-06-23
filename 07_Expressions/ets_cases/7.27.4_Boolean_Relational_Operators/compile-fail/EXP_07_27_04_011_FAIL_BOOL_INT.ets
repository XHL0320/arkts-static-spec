/**
 * @id EXP_07_27_04_011_FAIL_BOOL_INT
 * @expect compile-fail
 * @section 7.27.4
 * @design 验证 boolean 与 int 混合比较产生编译时错误
 * @note 反向用例：boolean/int 类型混用应拒绝编译
 */
let a: boolean = true;
let b: int = 1;
let r: boolean = a < b;
