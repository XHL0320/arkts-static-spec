/**
 * @id EXP2_17_13_3_008_FAIL_INCOMPATIBLE_RECEIVER_TYPE_ASSIGN
 * @expect compile-fail
 * @section 17.13.3
 * @design 接收者类型不匹配的lambda赋值给函数类型变量应编译失败 ESE0318
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Dog { breed: string = "" }
class Cat { breed: string = "" }
type DogFunc = (this: Dog) => string
function testIncompatibleReceiverAssign(): void {
  let df: DogFunc = (this: Cat): string => { return this.breed }
}
