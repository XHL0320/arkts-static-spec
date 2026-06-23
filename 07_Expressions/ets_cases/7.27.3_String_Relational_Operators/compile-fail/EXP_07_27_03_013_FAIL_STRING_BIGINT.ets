/**
 * @id EXP_07_27_03_013_FAIL_STRING_BIGINT
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与bigint的关系运算产生编译时错误
 * @note 反向用例：字符串与bigint比较应报编译时错误
 */
let s: string = "hello";
let b: bigint = 2n;
let r: boolean = s > b;
