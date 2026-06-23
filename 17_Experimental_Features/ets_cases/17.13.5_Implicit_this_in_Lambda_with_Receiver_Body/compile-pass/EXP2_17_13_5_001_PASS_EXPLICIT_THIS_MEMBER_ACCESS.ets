/**
 * @id EXP2_17_13_5_001_PASS_EXPLICIT_THIS_MEMBER_ACCESS
 * @expect compile-pass
 * @section 17.13.5
 * @design 显式 this 访问接收者成员：在接收者lambda体内使用 this.field 访问成员
 * @note 正向用例：验证该特性编译通过的正确用法。es2panda 要求使用显式 this. 前缀
 */
class Employee { name: string = ""; salary: number = 0 }
function testExplicitThisAccess(): void {
  let describe = (this: Employee): string => { return this.name + " earns " + this.salary }
  let emp: Employee = new Employee(); emp.name = "Alice"; emp.salary = 50000
  let desc: string = describe(emp)
  console.log("compiled successfully")
}
