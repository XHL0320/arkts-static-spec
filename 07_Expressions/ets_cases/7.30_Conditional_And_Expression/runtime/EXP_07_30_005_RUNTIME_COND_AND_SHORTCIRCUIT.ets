/**
 * @id EXP_07_30_005_RUNTIME_COND_AND_SHORTCIRCUIT
 * @expect runtime
 * @section 7.30
 * @design && 短路：左侧 false 不执行右侧

 * @note 运行时用例：实际执行验证&& 短路求值
 */
let sideEffectCalled: boolean = false
function sideEffect(): boolean { sideEffectCalled = true; return true }
function main(): void {
  let result: boolean = false && sideEffect()
  if (sideEffectCalled) { throw new Error("assertion failed: side effect should not be called") }
  if (result != false) { throw new Error("assertion failed: false && true = false") }
  let result2: boolean = true && sideEffect()
  if (!sideEffectCalled) { throw new Error("assertion failed: side effect should be called") }
  console.log("verified")
}
