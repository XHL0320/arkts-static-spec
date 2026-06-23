/**
 * @id EXP2_17_11_01_004_PASS_FINAL_CLASS_WITH_FINAL_METHOD
 * @expect compile-pass
 * @section 17.11.1
 * @design final 类中的 final 方法声明：验证 final 类中可以声明 final 方法，且编译通过
 * @note 正向用例：验证 final 类中 final 方法声明的编译
 */
final class FinalClassWithFinalMethod {
  count: int = 0

  final increment(): void {
    this.count = this.count + 1
  }

  final getCount(): int {
    return this.count
  }
}

function testFinalClassWithFinalMethod(): void {
  let obj: FinalClassWithFinalMethod = new FinalClassWithFinalMethod()
  obj.increment()
  console.log("final class with final method OK")
}
