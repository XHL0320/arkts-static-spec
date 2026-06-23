/**
 * @id EXP_07_13_01_001_PASS_INT_INDEX
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证 int 类型索引合法：索引表达式必须为 byte/short/int
 * @note 正向用例：int 字面量和 int 变量作为数组索引，编译通过
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let idx: int = 1;
  let s: string = names[idx];
}
