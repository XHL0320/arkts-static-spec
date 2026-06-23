/**
 * @id CLS_09_07_049_FAIL_ASYNC_OVERLOAD
 * @expect compile-fail
 * @section 9.7.4
 * @design async 方法不支持方法重载（overload）
 * @note 编译错误：async 方法不能有 overload 签名
 */
class BadAsync049 {
  async fetch(): Promise<string>
  async fetch(id: int): Promise<string>
  async fetch(id?: int): Promise<string> { // 编译错误：async 不支持 overload
    if (id) {
      return "item_" + id
    }
    return "all"
  }
}
