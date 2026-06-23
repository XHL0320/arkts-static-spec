/**
 * @id EXP2_17_13_1_014_RUNTIME_THIS_BINDING_VERIFY
 * @expect runtime
 * @section 17.13.1
 * @design 运行时验证：this 绑定正确——方法调用和普通调用指向同一个接收者对象
 * @note 运行时用例：实际执行验证 this 绑定指向正确的接收者
 */
class Tracker { id: number = 0 }
function identify(this: Tracker): number { return this.id }
function main(): void {
  let t1: Tracker = new Tracker(); t1.id = 100
  let t2: Tracker = new Tracker(); t2.id = 200
  let r1: number = t1.identify()
  if (r1 != 100) { throw new Error("assertion failed: expected 100, got " + r1) }
  let r2: number = t2.identify()
  if (r2 != 200) { throw new Error("assertion failed: expected 200, got " + r2) }
  let r3: number = identify(t1)
  if (r3 != 100) { throw new Error("assertion failed: expected 100, got " + r3) }
  console.log("verified")
}
