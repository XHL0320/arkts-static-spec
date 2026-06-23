/**
 * @id EXP_07_27_03_012_FAIL_STRING_BOOLEAN
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与boolean的关系运算产生编译时错误
 * @note 反向用例：字符串与布尔值比较应报编译时错误
 */
let s: string = "hello";
let flag: boolean = true;
let r: boolean = s <= flag;
