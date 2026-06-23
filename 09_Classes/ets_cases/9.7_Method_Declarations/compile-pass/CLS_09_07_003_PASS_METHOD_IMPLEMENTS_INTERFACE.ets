/**
 * @id CLS_09_07_003_PASS_METHOD_IMPLEMENTS_INTERFACE
 * @expect compile-pass
 * @section 9.7
 * @design 非静态方法实现接口方法 — non-static method can implement interface method
 * @note 正向用例：类实现接口中声明的方法
 */
interface I003 { doWork(): string }
class Worker003 implements I003 {
  doWork(): string { return "done" }
}
