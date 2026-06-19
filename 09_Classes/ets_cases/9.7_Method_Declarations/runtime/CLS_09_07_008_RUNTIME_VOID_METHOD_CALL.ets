/**
 * @id CLS_09_07_008_RUNTIME_VOID_METHOD_CALL
 * @expect runtime
 * @section 9.7
 * @design void方法调用运行时验证
 * @note 运行时用例
 */
let gCounter: int = 0
class Counter008 {
  increment(): void { gCounter = gCounter + 1 }
  reset(): void { gCounter = 0 }
}
function main(): void {
  let c: Counter008 = new Counter008()
  c.reset()
  c.increment()
  c.increment()
  if (gCounter != 2) { throw new Error("counter fail") }
  console.log("verified")
}
