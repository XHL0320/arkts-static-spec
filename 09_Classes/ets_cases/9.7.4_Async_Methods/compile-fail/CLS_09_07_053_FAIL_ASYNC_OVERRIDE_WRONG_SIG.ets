/**
 * @id CLS_09_07_053_FAIL_ASYNC_OVERRIDE_WRONG_SIG
 * @expect compile-fail
 * @section 9.7.4
 * @design override async 方法签名不匹配
 * @note 编译错误：override 方法签名需匹配父类
 */
class BaseAsync053 {
  async foo(): Promise<int> { return 1 }
}
class BadAsync053 extends BaseAsync053 {
  override async foo(): Promise<string> { // 编译错误：返回类型不匹配
    return "bad"
  }
}
