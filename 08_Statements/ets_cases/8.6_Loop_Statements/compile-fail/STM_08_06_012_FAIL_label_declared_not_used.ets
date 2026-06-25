/**
 * @id STM_08_06_012_FAIL_label_declared_not_used
 * @expect compile-fail
 * @section 8.6
 * @design spec §8.6 要求：loop label 声明后若未在 loopStatement 中被 break/continue 使用，应产生 compile-time error
 * @note ⚠️ 编译器差异 C-8.06-01：es2panda 未实现此检查，实际编译通过(exit0)。本用例按 spec 标为 compile-fail，运行时表现为 unexpected pass，差异见 issue_report C-8.06-01
 */
function testLabelNotUsed(): void {
  unused_label:
  for (let i: int = 0; i < 10; i++) {
    console.log("iteration")
  }
}
