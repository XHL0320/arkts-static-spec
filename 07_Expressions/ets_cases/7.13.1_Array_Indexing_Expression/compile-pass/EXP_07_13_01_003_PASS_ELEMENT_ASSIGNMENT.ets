/**
 * @id EXP_07_13_01_003_PASS_ELEMENT_ASSIGNMENT
 * @expect compile-pass
 * @section 7.13.1
 * @design 验证数组元素赋值：数组索引表达式结果是 T 类型变量
 * @note 正向用例：通过索引赋值修改数组元素，编译通过
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  names[1] = "Martin";
}
