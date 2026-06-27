/**
 * @id ANN_18_05_2_005_PASS_NO_TARGET_UNRESTRICTED
 * @expect compile-pass
 * @section 18.5.2
 * @design 验证无 @Target 时注解使用不受限
 * @note 正向用例：无 target，可在 class 和 method 使用
 */
@interface MyAnno {}

@MyAnno
class C {}

class D {
  @MyAnno
  foo(): void {}
}
