/**
 * @id STM_08_15_2_030_RUNTIME_FINALLY_RETURN_VALUE
 * @expect runtime
 * @section 8.15.2
 * @design finally 中的 return 覆盖 try return

 * @note 运行时用例：实际执行验证finally return覆盖
 */
function finallyOverride(): int { try { return 10 } finally { return 20 } }
function main(): void {
  let r: int = finallyOverride()
  if (r != 20) { throw new Error("assertion: finally return overrides, got " + r) }
  console.log("verified")
}
