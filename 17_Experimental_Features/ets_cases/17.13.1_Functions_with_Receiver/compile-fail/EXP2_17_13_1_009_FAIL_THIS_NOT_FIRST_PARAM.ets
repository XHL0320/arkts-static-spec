/**
 * @id EXP2_17_13_1_009_FAIL_THIS_NOT_FIRST_PARAM
 * @expect compile-fail
 * @section 17.13.1
 * @design 接收者函数的 this 参数必须是第一个参数，否则编译失败 ESY0158
 * @note 反向用例：验证该场景应产生编译时错误
 */
class MyTarget { value: number = 0 }
function addWithPrefix(prefix: string, this: MyTarget): string { return prefix + this.value }
function testThisNotFirst(): void {
  let t: MyTarget = new MyTarget(); t.value = 42
  let result: string = t.addWithPrefix("val:")
}
