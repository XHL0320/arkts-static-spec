/**
 * @id EXP2_17_10_02_002_PASS_NATIVE_METHOD_WITH_PARAMS
 * @expect compile-pass
 * @section 17.10.2
 * @design 原生方法带多种参数类型和返回类型：验证 native method 支持多种参数类型和不同的返回类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class DataProcessor {
  native processString(s: string): string
  native processInt(n: int): int
  native processDouble(d: double): double
  native combineStrAndInt(s: string, n: int): string
}
