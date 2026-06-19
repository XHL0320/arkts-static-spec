/**
 * @id CLS_09_10_013_PASS_MULTI_INTERFACE
 * @expect compile-pass
 * @section 9.10
 * @design 类实现多个接口
 * @note 正向用例：implements多个接口
 */
interface A13 { a(): int }
interface B13 { b(): string }
class Impl implements A13, B13 {
  a(): int { return 1 }
  b(): string { return "b" }
}
