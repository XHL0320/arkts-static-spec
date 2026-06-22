/**
 * @id EXP_07_27_02_008_RUNTIME_BIGINT_VS_FLOAT
 * @expect runtime
 * @section 7.27.2
 * @design bigint vs float 关系比较（都转 double）
 * @note 运行时用例：实际执行验证 bigint vs float 转换比较
 */
function main(): void {
  let a: bigint = BigInt("100")
  let b: float = 200.5f
  let c1: boolean = a < b
  if (c1 != true) { throw new Error("assertion failed: 100n < 200.5f should be true") }
  console.log("verified")
}
