/**
 * @id EXP_07_13_01_002_PASS_SHORT_BYTE_INDEX
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证 byte 和 short 类型索引合法：通过加宽数值转换到 int
 * @note 正向用例：byte/short 变量作为数组索引，加宽转换到 int 后合法
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let b: byte = 0;
  let s: short = 2;
  let s1: string = names[b];
  let s2: string = names[s];
}
