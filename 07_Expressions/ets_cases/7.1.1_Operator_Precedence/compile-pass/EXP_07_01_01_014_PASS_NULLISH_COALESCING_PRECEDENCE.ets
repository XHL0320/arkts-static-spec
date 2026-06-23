/**
 * @id EXP_07_01_01_014_PASS_NULLISH_COALESCING_PRECEDENCE
 * @expect compile-pass
 * @section 7.1.1
 * @design null 合并 `??` 优先级低于逻辑或 `||`，高于三元 `?:`
 * @note 正向用例：验证 null 合并运算符优先级
 */
function testNullishCoalescingPrecedence(): void {
  let a: int | undefined = undefined
  let b: int | undefined = 5
  let x: int = a ?? 10 + b ?? 0
  let y: int = a ?? (b ?? 0)
}
