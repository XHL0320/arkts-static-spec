/**
 * @id EXP_07_13_02_013_FAIL_DOUBLE_INDEX
 * @expect compile-fail
 * @section 7.13.2
 * @design 验证 double 类型无转换作为字符串索引编译时错误：索引必须为 int 类型
 * @note 反向用例：double 类型直接作为字符串索引，编译时错误
 */
function main(): void {
  let s: string = "hello";
  let d: double = 2.0;
  let c: string = s[d];
}
