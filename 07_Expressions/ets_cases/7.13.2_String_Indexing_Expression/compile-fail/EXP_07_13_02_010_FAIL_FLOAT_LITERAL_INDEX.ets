/**
 * @id EXP_07_13_02_010_FAIL_FLOAT_LITERAL_INDEX
 * @expect compile-fail
 * @section 7.13.2
 * @design 验证浮点字面量作为字符串索引编译时错误：索引必须为整数类型
 * @note 反向用例：s[3.5] 浮点数索引，编译时错误
 */
function main(): void {
  let s: string = "hello";
  let c: string = s[3.5];
}
