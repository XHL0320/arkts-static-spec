/**
 * @id EXP2_17_11_01_001_PASS_FINAL_CLASS_DECLARATION
 * @expect compile-pass
 * @section 17.11.1
 * @design 基本 final 类声明：验证 `final class C {}` 声明可编译通过
 * @note 正向用例：验证基本 final 类声明的编译
 */
final class SimpleFinal {
  value: int = 0
}

function testSimpleFinal(): void {
  let obj: SimpleFinal = new SimpleFinal()
  console.log("final class declaration OK")
}
