/**
 * @id EXP2_17_11_01_002_PASS_FINAL_CLASS_INSTANTIATION
 * @expect compile-pass
 * @section 17.11.1
 * @design final 类实例化：验证 final 类可以通过 new 正常实例化
 * @note 正向用例：验证 final 类的实例化编译通过
 */
final class InstantiableFinal {
  x: int = 0
  constructor(val: int) {
    this.x = val
  }
  getX(): int { return this.x }
}

function testInstantiableFinal(): void {
  let obj: InstantiableFinal = new InstantiableFinal(10)
  console.log("final class instantiation OK")
}
