/**
 * @id CLS_09_04_010_FAIL_METHOD_OVERLOAD
 * @expect compile-fail
 * @section 9.4
 * @design TS风格方法重载（无body签名）ArkTS不支持
 * @note 2026-07-17 PDF原文核查：ArkTS方法重载需用§17.9实验特性`overload`关键字，
 *       不支持TS风格的多签名语法。编译器报ESE0017是正确行为。
 *       从compile-pass移至compile-fail。
 */
class Overload010 {
  foo(x: number): number
  foo(x: string): string
  foo(x: number | string): number | string {
    if (typeof x === "number") {
      return x * 2
    }
    return x + "!"
  }
}
