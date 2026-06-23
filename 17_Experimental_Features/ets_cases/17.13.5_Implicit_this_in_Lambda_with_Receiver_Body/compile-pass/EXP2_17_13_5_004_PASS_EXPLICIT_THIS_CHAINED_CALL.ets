/**
 * @id EXP2_17_13_5_004_PASS_EXPLICIT_THIS_CHAINED_CALL
 * @expect compile-pass
 * @section 17.13.5
 * @design 通过显式this调用接收者的方法并访问成员
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class User { firstName: string = ""; lastName: string = ""
  getFullName(): string { return this.firstName + " " + this.lastName } }
function testExplicitThisChained(): void {
  let greeting = (this: User): string => { return "Welcome, " + this.getFullName() }
  let u: User = new User(); u.firstName = "Jane"; u.lastName = "Smith"
  let greet: string = greeting(u)
  console.log("compiled successfully")
}
