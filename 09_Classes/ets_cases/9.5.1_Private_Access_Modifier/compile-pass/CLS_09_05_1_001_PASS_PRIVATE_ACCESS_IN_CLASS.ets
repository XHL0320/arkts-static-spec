/**
 * @id CLS_09_05_1_001_PASS_PRIVATE_ACCESS_IN_CLASS
 * @expect compile-pass
 * @section 9.5.1
 * @design 类内访问private成员编译通过
 * @note 正向用例：spec规定private仅声明类内可访问
 */
class PrivInClass {
  private count: int = 1
  private hello(): void {}
  getCount(): int { return this.count }
  sayHello(): void { this.hello() }
}
