/**
 * @id LEX_02_07_055_RT_SUPER_THIS
 * @expect runtime
 * @section 2.7
 * @design 关键字 super/this 运行时绑定
 * @note 运行时用例：super 调父类方法，this 指当前实例
 */
class Base055 {
  protected v: int = 10

  getValue(): int {
    return this.v
  }
}

class Derived055 extends Base055 {
  override getValue(): int {
    return super.getValue() + this.v
  }
}

function main(): void {
  let d: Derived055 = new Derived055()
  let r: int = d.getValue()
  if (r !== 20) { throw new Error("getValue !== 20") }
}
