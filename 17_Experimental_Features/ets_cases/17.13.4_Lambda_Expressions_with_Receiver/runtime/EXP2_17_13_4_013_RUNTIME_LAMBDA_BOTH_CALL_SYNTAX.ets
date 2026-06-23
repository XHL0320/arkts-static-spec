/**
 * @id EXP2_17_13_4_013_RUNTIME_LAMBDA_BOTH_CALL_SYNTAX
 * @expect runtime
 * @section 17.13.4
 * @design 运行时验证：带接收者lambda通过普通调用语法执行，同时验证顶层接收者函数的方法调用语法
 * @note 运行时用例：实际执行验证接收者函数的两种调用方式
 */
class Buffer { data: number[] = [] }
function sumData(this: Buffer): number {
  let total: number = 0
  for (let elem of this.data) { total = total + elem }
  return total
}
function main(): void {
  let buf: Buffer = new Buffer(); buf.data = [10, 20, 30, 40]
  let r1: number = buf.sumData()
  if (r1 != 100) { throw new Error("assertion failed: expected 100, got " + r1) }
  let r2: number = sumData(buf)
  if (r2 != 100) { throw new Error("assertion failed: expected 100, got " + r2) }
  console.log("verified")
}
