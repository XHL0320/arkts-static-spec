/**
 * @id EXP_07_13_02_009_FAIL_STRING_INDEX
 * @expect compile-fail
 * @section 7.13.2
 * @design 验证字符串作为字符串索引编译时错误：索引必须为整数类型
 * @note 反向用例：s["abc"] 字符串作为索引，编译时错误
 */
function main(): void {
  let s: string = "hello";
  let c: string = s["abc"];
}
