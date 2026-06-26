/**
 * @id AMB_14_04_010_PASS_CLASS_IMPLEMENTS
 * @expect compile-pass
 * @section 14.4
 * @design declare class 带有 implements 实现子句
 * @note 正向用例：验证 ambient class implements 编译通过
 */
declare interface MyInterface {
  doSomething(): void
}
declare class ImplClass implements MyInterface {
  doSomething(): void
}
