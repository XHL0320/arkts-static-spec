/**
 * @id EXP2_17_13_3_013_RUNTIME_ASSIGN_AND_CALL_VARIABLE
 * @expect runtime
 * @section 17.13.3
 * @design 运行时验证：通过函数类型变量赋值和调用完整流程
 * @note 运行时用例：实际执行验证赋值和调用通过变量
 */
class Account { balance: number = 0 }
type Transaction = (this: Account, amount: number) => number
function main(): void {
  let deposit: Transaction = (this: Account, amount: number): number => { this.balance = this.balance + amount; return this.balance }
  let withdraw: Transaction = (this: Account, amount: number): number => { this.balance = this.balance - amount; return this.balance }
  let acc: Account = new Account()
  let r1: number = deposit(acc, 100)
  if (r1 != 100) { throw new Error("assertion failed: expected 100, got " + r1) }
  let r2: number = deposit(acc, 50)
  if (r2 != 150) { throw new Error("assertion failed: expected 150, got " + r2) }
  let r3: number = withdraw(acc, 30)
  if (r3 != 120) { throw new Error("assertion failed: expected 120, got " + r3) }
  console.log("verified")
}
