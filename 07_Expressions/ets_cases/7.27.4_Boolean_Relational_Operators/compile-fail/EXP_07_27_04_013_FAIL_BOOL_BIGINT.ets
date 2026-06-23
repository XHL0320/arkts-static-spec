/**
 * @id EXP_07_27_04_013_FAIL_BOOL_BIGINT
 * @expect compile-fail
 * @section 7.27.4
 * @design 验证 boolean 与 bigint 混合比较产生编译时错误
 * @note 反向用例：boolean/bigint 类型混用应拒绝编译
 */
let a: boolean = true;
let b: bigint = 1n;
let r: boolean = a < b;
