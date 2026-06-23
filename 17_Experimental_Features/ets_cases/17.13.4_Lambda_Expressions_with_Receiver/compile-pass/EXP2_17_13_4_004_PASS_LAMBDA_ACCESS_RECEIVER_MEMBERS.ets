/**
 * @id EXP2_17_13_4_004_PASS_LAMBDA_ACCESS_RECEIVER_MEMBERS
 * @expect compile-pass
 * @section 17.13.4
 * @design lambda内通过this访问接收者的公有成员
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Person { firstName: string = ""; lastName: string = "" }
function testLambdaAccessMembers(): void {
  let fullName = (this: Person): string => { return this.firstName + " " + this.lastName }
  let p: Person = new Person(); p.firstName = "John"; p.lastName = "Doe"
  let name: string = fullName(p)
  console.log("compiled successfully")
}
