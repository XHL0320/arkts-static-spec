/**
 * @id EXP2_17_10_03_003_PASS_NATIVE_CONSTRUCTOR_IN_SUBCLASS
 * @expect compile-pass
 * @section 17.10.3
 * @design 子类中 native 构造函数声明：验证 extends 的派生类中可以声明 native constructor
 * @note 正向用例：验证子类中 native 构造函数声明可编译通过
 */
class BaseClass {
  constructor() {}
}

class DerivedNative extends BaseClass {
  native constructor()
}

function testNativeCtorInSubclass(): void {
  let obj: DerivedNative | null = null
  console.log("native constructor in subclass type reference OK")
}
