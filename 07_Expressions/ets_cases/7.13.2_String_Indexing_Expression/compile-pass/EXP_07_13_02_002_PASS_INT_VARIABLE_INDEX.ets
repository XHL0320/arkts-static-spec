/**
 * @id EXP_07_13_02_002_PASS_INT_VARIABLE_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证 int 变量作为字符串索引合法
 * @note 正向用例：int 类型变量作为字符串索引，编译通过
 */
function main(): void {
  let s: string = "hello";
  let idx: int = 1;
  let c: string = s[idx];
}
