/**
 * @id EXP_07_02_01_015_PASS_TERNARY_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 三目表达式类型推断，两个分支类型一致或在 target type 下可兼容
 * @note 正向用例：验证三目表达式类型推断
 */
function testTernaryTarget(): void {
  let cond: boolean = true
  let a: int = cond ? 10 : 20
  let b: string = cond ? "yes" : "no"
}
