/**
 * @id EXP_07_13_02_006_PASS_LONG_TO_INT_INDEX
 * @expect compile-pass
 * @section 7.13.2
 * @design 验证 long→.toInt() 显式转换后可作为字符串索引
 * @note 正向用例：long 类型通过 .toInt() 转换后索引字符串，编译通过
 */
function main(): void {
  let s: string = "arkts";
  let l: long = 2;
  let c: string = s[l.toInt()];
}
