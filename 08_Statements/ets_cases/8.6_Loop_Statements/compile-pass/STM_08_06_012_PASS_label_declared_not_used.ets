/**
 * @id STM_08_06_012_FAIL_label_declared_not_used
 * @expect compile-pass
 * @section 8.6
 * @design 循环标签声明后必须被使用 — STATEMENTS.md: "A compile-time error occurs if the label identifier is not used within loopStatement"
 * @note 正向用例（spec-implementation 差异：STATEMENTS.md 要求 compile-time error，es2panda 未强制此约束）：label 声明但未被 break/continue 使用 → compile-time error
 */
function testLabelNotUsed(): void {
  unused_label:
  for (let i: int = 0; i < 10; i++) {
    console.log("iteration")
  }
}
