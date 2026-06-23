/**
 * @id EXP2_17_13_1_004_PASS_ACCESS_PUBLIC_MEMBER
 * @expect compile-pass
 * @section 17.13.1
 * @design 接收者函数通过 this 访问公有成员变量
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class DataObject { name: string = "unnamed"; age: number = 0 }
function describe(this: DataObject): string { return this.name + " is " + this.age + " years old" }
function testAccessPublicMember(): void {
  let obj: DataObject = new DataObject()
  obj.name = "Alice"; obj.age = 30
  let desc: string = obj.describe()
  console.log("compiled successfully")
}
