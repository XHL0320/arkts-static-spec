/**
 * @id CLS_09_03_003_PASS_IMPLEMENTS_ALL_METHODS
 * @expect compile-pass
 * @section 9.3
 * @design 非抽象类实现接口所有方法编译通过
 * @note 正向用例：验证非抽象类必须实现所有接口方法
 */
interface ICalc {
  add(a: int, b: int): int
  sub(a: int, b: int): int
}
class Calculator implements ICalc {
  add(a: int, b: int): int { return a + b }
  sub(a: int, b: int): int { return a - b }
}
