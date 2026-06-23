/**
 * @id EXP_07_16_002_PASS_INSTANCEOF_SMART_CAST
 * @expect compile-pass
 * @section 7.16
 * @design 验证 instanceof 在 if 子句中触发 smart cast，编译通过
 * @note 正向用例：instanceof 后类型收窄编译通过
 */
class A { foo(): int { return 1 } }
class B extends A { bar(): int { return 2 } }

function test(x: A): int {
  if (x instanceof B) {
    return x.bar()
  }
  return x.foo()
}
let r: int = test(new B())
