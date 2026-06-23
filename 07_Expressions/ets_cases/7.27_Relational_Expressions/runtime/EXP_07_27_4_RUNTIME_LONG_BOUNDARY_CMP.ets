/**
 * @id EXP_07_27_4_RUNTIME_LONG_BOUNDARY_CMP
 * @expect runtime
 * @section 7.27
 * @design long 边界值运行时比较
 * @note 运行时用例：实际执行验证long 边界值运行时比较
 */

function main(): void {
  let a: long = 9223372036854775807; let b: long = -9223372036854775808
  if (!(a > b)) { throw new Error("assertion failed: long max > min") }
  console.log("verified")
}
