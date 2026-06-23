/**
 * @id EXP2_17_13_2_013_RUNTIME_CLASS_RECEIVER_VERIFY
 * @expect runtime
 * @section 17.13.2
 * @design 运行时验证：类类型接收者函数正确执行
 * @note 运行时用例：实际执行验证类作为接收者类型
 */
class BankAccount { balance: number = 0 }
function deposit(this: BankAccount, amount: number): number { this.balance = this.balance + amount; return this.balance }
function withdraw(this: BankAccount, amount: number): number { this.balance = this.balance - amount; return this.balance }
function main(): void {
  let acc: BankAccount = new BankAccount()
  let r1: number = acc.deposit(500)
  if (r1 != 500) { throw new Error("assertion failed: expected 500, got " + r1) }
  let r2: number = acc.withdraw(200)
  if (r2 != 300) { throw new Error("assertion failed: expected 300, got " + r2) }
  let r3: number = deposit(acc, 100)
  if (r3 != 400) { throw new Error("assertion failed: expected 400, got " + r3) }
  console.log("verified")
}
