/**
 * @id EXP2_17_13_006_FAIL_ORDINARY_CALL_WRONG_RECEIVER
 * @expect compile-fail
 * @section 17.13
 * @design 普通调用语法传入错误的接收者类型应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Person { name: string = "person" }
function greet(this: Person): string { return "Hello " + this.name }
function testWrongReceiverOrdinary(): void {
  let result: string = greet("not a person")
}
