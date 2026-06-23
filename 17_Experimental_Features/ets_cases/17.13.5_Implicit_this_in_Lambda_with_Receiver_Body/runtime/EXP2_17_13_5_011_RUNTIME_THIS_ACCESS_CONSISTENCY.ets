/**
 * @id EXP2_17_13_5_011_RUNTIME_THIS_ACCESS_CONSISTENCY
 * @expect runtime
 * @section 17.13.5
 * @design 运行时验证：顶层接收者函数的方法调用和普通调用产生相同结果
 * @note 运行时用例：实际执行验证this访问一致性
 */
class Container { capacity: number = 0; used: number = 0 }
function remaining(this: Container): number { return this.capacity - this.used }
function main(): void {
  let c: Container = new Container(); c.capacity = 100; c.used = 30
  let r1: number = c.remaining()
  if (r1 != 70) { throw new Error("assertion failed: expected 70, got " + r1) }
  let r2: number = remaining(c)
  if (r2 != 70) { throw new Error("assertion failed: expected 70, got " + r2) }
  console.log("verified")
}
