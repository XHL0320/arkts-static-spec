/**
 * @id EXP2_17_13_4_002_PASS_LAMBDA_METHOD_CALL
 * @expect compile-pass
 * @section 17.13.4
 * @design 带接收者的lambda通过普通调用语法调用：lambda(receiver, args)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Counter { count: number = 0 }
function testLambdaMethodCall(): void {
  let increment = (this: Counter): number => { this.count = this.count + 1; return this.count }
  let c: Counter = new Counter()
  let r1: number = increment(c)
  let r2: number = increment(c)
  console.log("compiled successfully")
}
