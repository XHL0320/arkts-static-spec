/**
 * @id EXP_07_27_03_016_FAIL_STRING_FLOAT
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与float的关系运算产生编译时错误
 * @note 反向用例：字符串与float比较应报编译时错误
 */
let s: string = "hello";
let f: float = 1.5f;
let r: boolean = s < f;
