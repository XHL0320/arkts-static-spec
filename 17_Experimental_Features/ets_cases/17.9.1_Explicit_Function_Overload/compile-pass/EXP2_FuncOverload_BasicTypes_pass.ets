/**
 * @id EXP2_17_09_01_001_PASS_BASIC_TYPES
 * @expect compile-pass
 * @section 17.9.1
 * @design overload 函数重载：不同参数类型(int/string/boolean/double)
 * @note 正向用例：验证显式函数重载基本声明和调用
 */
function addInt(a: int, b: int): int {
  return a + b
}
function addStr(a: string, b: string): string {
  return a + b
}
function addDbl(a: double, b: double): double {
  return a + b
}
overload add { addInt, addStr, addDbl }
