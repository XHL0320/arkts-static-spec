/**
 * @id EXP_07_27_8_RUNTIME_INT_FLOAT_PROMOTE
 * @expect runtime
 * @section 7.27
 * @design int 与 float 提升比较
 * @note 运行时用例：实际执行验证int 与 float 提升比较
 */

function main(): void {
  let a: int = 10; let b: float = 20.0f
  if (!(a < b)) { throw new Error("assertion failed: int < float") }
  console.log("verified")
}
