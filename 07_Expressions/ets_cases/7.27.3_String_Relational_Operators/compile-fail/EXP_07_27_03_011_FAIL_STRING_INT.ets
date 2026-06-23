/**
 * @id EXP_07_27_03_011_FAIL_STRING_INT
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与int的关系运算产生编译时错误
 * @note 反向用例：字符串与整数比较应报编译时错误
 */
let s: string = "hello";
let n: int = 42;
let r: boolean = s < n;
