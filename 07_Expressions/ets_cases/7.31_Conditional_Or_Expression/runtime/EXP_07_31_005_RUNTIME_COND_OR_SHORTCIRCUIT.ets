/**
 * @id EXP_07_31_005_RUNTIME_COND_OR_SHORTCIRCUIT
 * @expect runtime
 * @section 7.31
 * @design || 短路：左侧 true 不执行右侧

 * @note 运行时用例：实际执行验证|| 短路求值
 */
let sideEffectCalled2: boolean = false
function sideEffect2(): boolean { sideEffectCalled2 = true; return false }
function main(): void {
  let result: boolean = true || sideEffect2()
  if (sideEffectCalled2) { throw new Error("assertion failed: side effect should not be called") }
  if (result != true) { throw new Error("assertion failed: true || false = true") }
  let result2: boolean = false || sideEffect2()
  if (!sideEffectCalled2) { throw new Error("assertion failed: side effect should be called") }
  console.log("verified")
}
