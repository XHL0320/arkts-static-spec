/**
 * @id ANN_18_02_010_PASS_ON_INTERFACE_METHOD
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于接口方法
 * @note 正向用例：注解在 interface method 上
 */
@interface Auditable {}

interface I {
  @Auditable
  foo(): void
}
