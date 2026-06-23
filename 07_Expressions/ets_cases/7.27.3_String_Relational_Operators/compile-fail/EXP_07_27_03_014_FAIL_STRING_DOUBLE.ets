/**
 * @id EXP_07_27_03_014_FAIL_STRING_DOUBLE
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与double的关系运算产生编译时错误
 * @note 反向用例：字符串与浮点数比较应报编译时错误
 */
let s: string = "hello";
let d: double = 3.14;
let r: boolean = s >= d;
