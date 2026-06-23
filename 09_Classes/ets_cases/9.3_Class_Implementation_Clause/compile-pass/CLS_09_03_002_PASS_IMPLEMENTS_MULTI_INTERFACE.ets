/**
 * @id CLS_09_03_002_PASS_IMPLEMENTS_MULTI_INTERFACE
 * @expect compile-pass
 * @section 9.3
 * @design 类实现多个接口编译通过
 * @note 正向用例：验证implements子句指向多个接口
 */
interface IRunnable {
  run(): void
}
interface ISwimmable {
  swim(): void
}
class Athlete implements IRunnable, ISwimmable {
  run(): void {}
  swim(): void {}
}
