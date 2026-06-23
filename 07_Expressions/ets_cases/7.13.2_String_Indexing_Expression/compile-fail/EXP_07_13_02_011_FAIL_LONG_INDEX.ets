/**
 * @id EXP_07_13_02_011_FAIL_LONG_INDEX
 * @expect compile-fail
 * @section 7.13.2
 * @design 验证 long 类型无转换作为字符串索引编译时错误：索引必须为 int 类型
 * @note 反向用例：long 类型直接作为字符串索引，编译时错误
 */
function main(): void {
  let s: string = "world";
  let l: long = 1;
  let c: string = s[l];
}
