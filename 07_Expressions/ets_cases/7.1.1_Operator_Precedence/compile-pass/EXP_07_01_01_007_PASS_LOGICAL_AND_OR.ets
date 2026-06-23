/**
 * @id EXP_07_01_01_007_PASS_LOGICAL_AND_OR
 * @expect compile-pass
 * @section 7.1.1
 * @design 逻辑与 `&&` 优先级高于逻辑或 `||`，左结合
 * @note 正向用例：验证逻辑与优先于逻辑或
 */
function testLogicalAndOr(): void {
  let a: boolean = true || false && false
  let b: boolean = false && false || true
  let c: boolean = (true || false) && false
  let d: boolean = true || true && false || false
}
