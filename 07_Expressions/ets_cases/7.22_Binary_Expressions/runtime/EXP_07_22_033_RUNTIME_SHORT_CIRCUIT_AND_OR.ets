/**
 * @id EXP_07_22_033_RUNTIME_SHORT_CIRCUIT_AND_OR
 * @expect runtime
 * @section 7.22
 * @design 验证 && 和 || 的短路行为（Note 5 关联）：
 *         false && expr 不计算 expr，
 *         true || expr 不计算 expr
 * @note 运行时用例：短路求值，副作用不应执行
 */
let sideEffectCounter: int = 0

function increment(): boolean {
  sideEffectCounter = sideEffectCounter + 1
  return true
}

function main(): void {
  // false && increment() —— 短路，不调用 increment
  sideEffectCounter = 0
  let r1 = false && increment()
  if (sideEffectCounter != 0) {
    throw new Error("false && should short-circuit, counter=" + sideEffectCounter)
  }

  // true || increment() —— 短路，不调用 increment
  sideEffectCounter = 0
  let r2 = true || increment()
  if (sideEffectCounter != 0) {
    throw new Error("true || should short-circuit, counter=" + sideEffectCounter)
  }

  // true && increment() —— 不短路，应调用
  sideEffectCounter = 0
  let r3 = true && increment()
  if (sideEffectCounter != 1) {
    throw new Error("true && should NOT short-circuit, counter=" + sideEffectCounter)
  }

  // false || increment() —— 不短路，应调用
  sideEffectCounter = 0
  let r4 = false || increment()
  if (sideEffectCounter != 1) {
    throw new Error("false || should NOT short-circuit, counter=" + sideEffectCounter)
  }

  // 结果值验证
  if (r1 != false) {
    throw new Error("false && true should be false")
  }
  if (r2 != true) {
    throw new Error("true || true should be true")
  }
  if (r3 != true) {
    throw new Error("true && true should be true")
  }
  if (r4 != true) {
    throw new Error("false || true should be true")
  }

  console.log("verified")
}
main()
