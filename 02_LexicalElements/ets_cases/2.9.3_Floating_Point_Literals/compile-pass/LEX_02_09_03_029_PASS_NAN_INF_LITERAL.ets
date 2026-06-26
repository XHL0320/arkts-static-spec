/**
 * @id LEX_02_09_03_029_PASS_NAN_INF_LITERAL
 * @expect compile-pass
 * @section 2.9.3
 * @design NaN 和 Infinity 字面量编译通过验证
 * @note 正向用例：验证 NaN/Infinity 可作为合法的浮点字面量通过编译
 */
function testNanInfLiteral(): void {
  let a: double = 0.0 / 0.0
  let b: double = 1.0 / 0.0
  let c: double = -1.0 / 0.0
  let d: boolean = a.isNaN()
  let e: boolean = b.isFinite()
  let f: boolean = c.isFinite()
}
