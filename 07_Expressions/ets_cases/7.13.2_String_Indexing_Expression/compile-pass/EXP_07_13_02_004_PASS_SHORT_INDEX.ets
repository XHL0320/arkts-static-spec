/**
 * @id EXP_07_13_02_004_PASS_SHORT_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证 short 类型作为字符串索引合法：short 可加宽到 int
 * @note 正向用例：short 变量作为字符串索引，编译通过
 */
function main(): void {
  let s: string = "hello";
  let sh: short = 2;
  let c: string = s[sh];
}
