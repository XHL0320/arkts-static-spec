/**
 * @id ENM_11_04_009_PASS_ENUM_INSTANCE_METHOD_TYPES
 * @expect compile-pass
 * @section 11.4
 * @design 枚举实例方法 toString/valueOf/getName 类型检查
 * @note 正向用例：验证枚举实例方法返回类型
 */
enum MethodLevel { Low, High = 10 }
function testEnumInstanceMethodTypes(): void {
  let level: MethodLevel = MethodLevel.High
  let text: string = level.toString()
  let name: string = level.getName()
  let value: int = level.valueOf()
}
