/**
 * @id EXP2_MethodOverload_SpecialNames_pass
 * @expect compile-pass
 * @section 17.9.2
 * @design overload 可包含 $_get, $_set 等特殊名称方法
 * @note 正向用例：特殊方法参与 overload
 */
class MyContainer {
  private value: int = 0
  $_get(key: string): int { return this.value }
  $_getByName(key: string, name: string): int { return this.value + name.length }
  overload $_get { $_get, $_getByName }
}
