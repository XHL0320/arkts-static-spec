/**
 * @id LEX_02_07_012_PASS_HARD_KW_INTERFACE
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: interface, extends, implements
 * @note 正向用例：接口声明、继承、实现
 */
interface IBase012 {
  method(): void
}

interface IDerived012 extends IBase012 {
  another(): void
}

class Impl012 implements IDerived012 {
  method(): void {}
  another(): void {}
}

function test012(): void {
  let i: IDerived012 = new Impl012()
}
