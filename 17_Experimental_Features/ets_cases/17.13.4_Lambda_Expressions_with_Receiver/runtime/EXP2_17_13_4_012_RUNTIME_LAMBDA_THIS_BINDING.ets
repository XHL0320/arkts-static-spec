/**
 * @id EXP2_17_13_4_012_RUNTIME_LAMBDA_THIS_BINDING
 * @expect runtime
 * @section 17.13.4
 * @design 运行时验证：lambda接收者内this正确绑定到接收者对象
 * @note 运行时用例：实际执行验证lambda内this绑定
 */
class Wallet { amount: number = 0 }
function main(): void {
  let checkBalance = (this: Wallet): string => { return "balance:" + this.amount }
  let w1: Wallet = new Wallet(); w1.amount = 100
  let r1: string = checkBalance(w1)
  if (r1 != "balance:100") { throw new Error("assertion failed: expected 'balance:100', got '" + r1 + "'") }
  let w2: Wallet = new Wallet(); w2.amount = 500
  let r2: string = checkBalance(w2)
  if (r2 != "balance:500") { throw new Error("assertion failed: expected 'balance:500', got '" + r2 + "'") }
  console.log("verified")
}
