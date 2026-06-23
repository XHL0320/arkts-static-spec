/**
 * @id EXP2_17_10_03_004_PASS_NATIVE_AND_REGULAR_CONSTRUCTOR
 * @expect compile-pass
 * @section 17.10.3
 * @design native 构造函数与普通构造函数共存（重载）：验证一个类中可以有 native constructor 和普通 constructor
 * @note 正向用例：验证 native 与普通构造函数共存可通过编译
 */
class MixedCtorClass {
  x_val: int = 0

  native constructor()

  constructor(val: int) {
    this.x_val = val
  }

  getValue(): int {
    return this.x_val
  }
}

function testMixedCtorClass(): void {
  let obj: MixedCtorClass | null = null
  console.log("mixed constructor class type reference OK")
}
