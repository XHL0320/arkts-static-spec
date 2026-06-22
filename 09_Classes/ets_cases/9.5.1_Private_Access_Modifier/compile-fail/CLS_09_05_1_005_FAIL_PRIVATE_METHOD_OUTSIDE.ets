/**
 * @id CLS_09_05_1_005_FAIL_PRIVATE_METHOD_OUTSIDE
 * @expect compile-fail
 * @section 9.5.1
 * @design 类外访问private方法导致编译错误
 * @note 反向用例：外部函数不可访问private方法
 */
class PrivMethodCls {
  private hello(): void {}
}
function callPrivMethod(c: PrivMethodCls): void {
  c.hello()
}
