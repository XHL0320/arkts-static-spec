/**
 * @id ENM_11_04_008_PASS_ENUM_STATIC_METHOD_TYPES
 * @expect compile-pass
 * @section 11.4
 * @design 枚举静态方法 values/getValueOf/fromValue 类型检查
 * @note 正向用例：验证枚举静态方法返回类型可赋值给枚举类型
 */
enum MethodColor { Red, Green, Blue = 5 }
function testEnumStaticMethodTypes(): void {
  let values: FixedArray<MethodColor> = MethodColor.values()
  let red: MethodColor = MethodColor.getValueOf("Red")
  let blue: MethodColor = MethodColor.fromValue(5)
}
