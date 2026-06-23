/**
 * @id EXP_07_13_01_006_PASS_LONG_TO_INT_CONVERSION
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证 long 类型通过 .toInt() 显式转换为 int 后作为索引
 * @note 正向用例：arr[longVar.toInt()] 显式转换后合法
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let idx: long = 1;
  let s: string = names[idx.toInt()];
}
