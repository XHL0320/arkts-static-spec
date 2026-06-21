/**
 * @id CLS_09_07_048_PASS_ASYNC_VOID_RETURN
 * @expect compile-pass
 * @section 9.7.4
 * @design async 方法返回 void / undefined 可无 return
 * @note 正向用例：Promise<void> 可省略 return
 */
class AsyncVoid048 {
  async log(): Promise<void> {
    let msg: string = "async_void"
    console.log(msg)
  }
  async report(): Promise<void> {
    let msg: string = "async_report"
    console.log(msg)
    return
  }
}
