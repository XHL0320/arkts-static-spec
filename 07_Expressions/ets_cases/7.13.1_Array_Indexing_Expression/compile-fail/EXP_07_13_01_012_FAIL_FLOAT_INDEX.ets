/**
 * @id EXP_07_13_01_012_FAIL_FLOAT_INDEX
 * @expect compile-fail
 * @section 7.13.1
 * @design 验证 float 类型无 .toInt() 转换时索引编译时错误
 * @note 反向用例：arr[floatVar] 未显式转换为 int，编译时错误
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let idx: float = 1.0;
  let s: string = names[idx];
}
