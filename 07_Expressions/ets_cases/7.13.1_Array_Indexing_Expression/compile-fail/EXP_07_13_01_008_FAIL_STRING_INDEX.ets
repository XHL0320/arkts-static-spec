/**
 * @id EXP_07_13_01_008_FAIL_STRING_INDEX
 * @expect compile-fail
 * @section 7.13.1
 * @design 验证字符串索引编译时错误：索引必须为整数类型
 * @note 反向用例：names["1"] 字符串作为索引，编译时错误
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let s: string = names["1"];
}
