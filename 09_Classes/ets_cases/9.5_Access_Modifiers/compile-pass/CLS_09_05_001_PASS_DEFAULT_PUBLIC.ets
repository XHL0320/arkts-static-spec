/**
 * @id CLS_09_05_001_PASS_DEFAULT_PUBLIC
 * @expect compile-pass
 * @section 9.5
 * @design 无修饰符的成员默认为public，编译通过
 * @note 正向用例：spec规定无修饰符默认public
 */
class DefaultPublic {
  field: int = 0
  method(): void {}
}
