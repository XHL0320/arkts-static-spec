/**
 * @id CLS_09_07_061_FAIL_ASYNC_OVERRIDE_WITHOUT_ASYNC
 * @expect compile-fail
 * @section 9.7.4
 * @design override 方法必须保持 async 一致性
 * @note 编译错误：父类 async 方法被子类非 async 方法 override
 */
class Base061 {
  async foo(): Promise<void> {}
}
class Bad061 extends Base061 {
  override foo(): void {} // 编译错误：缺少 async
}
