/**
 * @id EXP_07_13_01_007_PASS_FLOAT_DOUBLE_TO_INT
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证 float/double 类型通过 .toInt() 显式转换为 int 后作为索引
 * @note 正向用例：arr[floatVar.toInt()] 和 arr[doubleVar.toInt()] 显式转换后合法
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let f: float = 0;
  let d: double = 2.0;
  let s1: string = names[f.toInt()];
  let s2: string = names[d.toInt()];
}
