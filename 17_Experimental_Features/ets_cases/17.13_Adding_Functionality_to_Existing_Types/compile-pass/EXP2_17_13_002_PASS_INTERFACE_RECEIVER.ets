/**
 * @id EXP2_17_13_002_PASS_INTERFACE_RECEIVER
 * @expect compile-pass
 * @section 17.13
 * @design 接口类型接收者函数：为接口类型定义接收者函数，实现该接口的类实例均可使用方法调用语法
 * @note 正向用例：验证该特性编译通过的正确用法
 */
interface Drawable {
  color: string
}

class Circle implements Drawable {
  color: string = "red"
  radius: number = 5
}

function getColor(this: Drawable): string {
  return this.color
}

function testInterfaceReceiver(): void {
  let c: Circle = new Circle()
  let clr: string = c.getColor()
  let clr2: string = getColor(c)
  console.log("compiled successfully")
}
