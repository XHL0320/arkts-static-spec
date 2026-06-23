/**
 * @id EXP_07_13_01_013_FAIL_DOUBLE_INDEX
 * @expect compile-fail
 * @section 7.13.1
 * @design 验证 double 类型无 .toInt() 转换时索引编译时错误
 * @note 反向用例：arr[doubleVar] 未显式转换为 int，编译时错误
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let idx: double = 2.0;
  let s: string = names[idx];
}
