/**
 * @id EXP2_17_13_005_FAIL_INCOMPATIBLE_RECEIVER_TYPE
 * @expect compile-fail
 * @section 17.13
 * @design 接收者类型不兼容：方法调用语法的接收者类型与函数定义的 this 类型不匹配
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Dog { name: string = "dog" }
class Cat { name: string = "cat" }
function bark(this: Dog): string { return this.name + " barks" }
function testIncompatibleReceiver(): void {
  let c: Cat = new Cat()
  let result: string = c.bark()
}
