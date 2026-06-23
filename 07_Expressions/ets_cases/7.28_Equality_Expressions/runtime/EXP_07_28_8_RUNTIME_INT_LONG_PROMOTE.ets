/**
 * @id EXP_07_28_8_RUNTIME_INT_LONG_PROMOTE
 * @expect runtime
 * @section 7.28
 * @design int与long提升相等
 * @note 运行时用例：实际执行验证int与long提升相等
 */

function main(): void {
  let a: int = 5; let b: long = 5
  if (a != b) { throw new Error("assertion: int == long") }
  console.log("verified")
}
