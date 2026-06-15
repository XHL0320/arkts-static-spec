/**
 * @id LEX_02_03_035_RT_NBSP_SEPARATED
 * @expect runtime
 * @section 2.3
 * @design 仅 NBSP 分隔的代码运算结果正确 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: int = 5
  let b: int = 7
  let r: int = a * b
  if (r !== 35) { throw new Error("r !== 35") }
}
