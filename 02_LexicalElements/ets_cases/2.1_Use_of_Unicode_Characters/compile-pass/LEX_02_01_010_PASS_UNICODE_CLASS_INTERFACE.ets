/**
 * @id LEX_02_01_010_PASS_UNICODE_CLASS_INTERFACE
 * @expect compile-pass
 * @section 2.1
 * @design Unicode类名、接口名、方法名、字段名 * @note 正向用例：验证该特性编译通过的正确用法

 */
class 动物 {
  名字: string = ""
  叫声(): string {
    return this.名字
  }
}

interface 可绘制 {
  绘制(): void
}

class 圆形 implements 可绘制 {
  绘制(): void {}
}

function testUnicodeClassInterface(): void {
  let d: 动物 = new 动物()
  d.名字 = "猫"
  let c: 可绘制 = new 圆形()
}
