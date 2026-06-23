/**
 * @id EXP_07_27_9_RUNTIME_BYTE_INT_PROMOTE
 * @expect runtime
 * @section 7.27
 * @design byte 提升到 int 比较
 * @note 运行时用例：实际执行验证byte 提升到 int 比较
 */

function main(): void {
  let a: byte = 5; let b: int = 10
  if (!(a < b)) { throw new Error("assertion failed: byte < int") }
  console.log("verified")
}
