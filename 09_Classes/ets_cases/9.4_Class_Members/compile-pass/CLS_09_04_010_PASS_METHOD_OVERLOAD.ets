/**
 * @id CLS_09_04_010_PASS_METHOD_OVERLOAD
 * @expect compile-pass
 * @section 9.4
 * @design 显式方法重载（Explicit Method Overload）编译通过
 * @note 正向用例：spec §9.4明确提及方法重载，
 *       验证同名方法不同参数签名的重载声明合法
 *       Spec依据：spec §9.4 "Explicit Class Method Overload"
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
