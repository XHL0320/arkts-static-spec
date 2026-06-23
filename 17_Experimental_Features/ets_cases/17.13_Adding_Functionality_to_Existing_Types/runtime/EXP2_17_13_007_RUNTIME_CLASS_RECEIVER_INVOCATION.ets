/**
 * @id EXP2_17_13_007_RUNTIME_CLASS_RECEIVER_INVOCATION
 * @expect runtime
 * @section 17.13
 * @design 运行时验证：接收者函数通过方法调用语法和普通调用语法均正确执行
 * @note 运行时用例：实际执行验证接收者函数的运行时行为
 */
class Counter { count: number = 0 }
function increment(this: Counter): number { this.count = this.count + 1; return this.count }
function decrement(this: Counter): number { this.count = this.count - 1; return this.count }
function main(): void {
  let c: Counter = new Counter()
  let r1: number = c.increment()
  if (r1 != 1) { throw new Error("assertion failed: expected 1, got " + r1) }
  let r2: number = c.increment()
  if (r2 != 2) { throw new Error("assertion failed: expected 2, got " + r2) }
  let r3: number = decrement(c)
  if (r3 != 1) { throw new Error("assertion failed: expected 1, got " + r3) }
  console.log("verified")
}
