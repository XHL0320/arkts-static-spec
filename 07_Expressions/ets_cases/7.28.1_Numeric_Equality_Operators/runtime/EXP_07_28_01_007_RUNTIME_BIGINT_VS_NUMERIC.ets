/**
 * @id EXP_07_28_01_007_RUNTIME_BIGINT_VS_NUMERIC
 * @expect runtime
 * @section 7.28.1
 * @design bigint == numeric 返回 false（非编译错误）

 * @note 运行时用例：实际执行验证bigint vs numeric 相等
 */
function main(): void {
  let a: bigint = 5n; let b: int = 5
  let r: boolean = a == b
  if (r != false) { throw new Error("assertion failed: bigint == numeric should be false")
  }
  console.log("verified")
}
