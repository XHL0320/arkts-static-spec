/**
 * @id ANN_18_02_008_PASS_ON_CLASS_METHOD
 * @expect compile-pass
 * @section 18.2
 * @design 验证注解可应用于类方法
 * @note 正向用例：注解在 class method 上
 */
@interface Loggable {}

class C {
  @Loggable
  foo(): void {}
}
