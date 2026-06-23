/**
 * @id EXP_07_27_03_015_FAIL_STRING_OBJECT
 * @expect compile-fail
 * @section 7.27.3
 * @design 验证string与Object的关系运算产生编译时错误
 * @note 反向用例：字符串与Object比较应报编译时错误
 *       string虽然是Object的子类型，但关系运算符要求两个操作数都是string类型
 */
let s: string = "hello";
let o: Object = new Object();
let r: boolean = s < o;
