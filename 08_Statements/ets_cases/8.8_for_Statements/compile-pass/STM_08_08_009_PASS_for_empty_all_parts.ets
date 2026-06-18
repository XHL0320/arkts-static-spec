/**
 * @id STM_08_08_009_PASS_for_empty_all_parts
 * @expect compile-pass
 * @section 8.8
 * @design for 循环的三个部分均可为空 — STATEMENTS.md: forInit/forContinue/forUpdate 均为可选
 * @note 正向用例：for(;;) 空所有部分（无限循环，靠 break 退出）
 */
function testForEmptyAllParts(): void {
  let i: int = 0
  for (;;) {
    i++
    if (i >= 10) { break }
  }
}
