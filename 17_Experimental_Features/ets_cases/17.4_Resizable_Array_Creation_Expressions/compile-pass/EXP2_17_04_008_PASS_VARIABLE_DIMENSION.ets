/**
 * @id EXP2_17_04_008_PASS_VARIABLE_DIMENSION
 * @expect compile-pass
 * @section 17.4
 * @design 变量维度：维度表达式为 int 类型变量，验证编译通过
 * @note 正向用例：验证维度可以使用 int 变量（编译时无法确定具体值但类型正确）
 */
function testVariableDimensionCreation(): void {
  let array_size: int = 5
  let arr = new number[array_size](0)
  console.log(arr.length)
}
