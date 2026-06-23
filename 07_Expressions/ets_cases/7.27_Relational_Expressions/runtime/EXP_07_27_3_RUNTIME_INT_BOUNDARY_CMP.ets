/**
 * @id EXP_07_27_3_RUNTIME_INT_BOUNDARY_CMP
 * @expect runtime
 * @section 7.27
 * @design int 边界值运行时比较
 * @note 运行时用例：实际执行验证int 边界值运行时比较
 */

function main(): void {
  let a: int = 2147483647; let b: int = -2147483648
  if (!(a > b)) { throw new Error("assertion failed: max > min") }
  console.log("verified")
}
