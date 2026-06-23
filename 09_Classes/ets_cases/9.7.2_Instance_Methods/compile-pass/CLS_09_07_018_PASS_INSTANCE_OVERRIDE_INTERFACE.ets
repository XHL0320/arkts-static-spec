/**
 * @id CLS_09_07_018_PASS_INSTANCE_OVERRIDE_INTERFACE
 * @expect compile-pass
 * @section 9.7.2
 * @design 实例方法实现接口方法
 * @note 正向用例：implements接口的实例方法
 */
interface Greeter { greet(): string }
class HelloGreeter implements Greeter {
  greet(): string { return "hello" }
}
