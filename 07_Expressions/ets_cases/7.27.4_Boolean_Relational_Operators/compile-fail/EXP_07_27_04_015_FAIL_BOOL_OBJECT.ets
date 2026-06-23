/**
 * @id EXP_07_27_04_015_FAIL_BOOL_OBJECT
 * @expect compile-fail
 * @section 7.27.4
 * @design 验证 boolean 与 Object 混合比较产生编译时错误
 * @note 反向用例：boolean/Object 类型混用应拒绝编译
 */
let a: boolean = true;
let b: Object = "hello";
let r: boolean = a < b;
