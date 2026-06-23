/**
 * @id EXP2_17_09_02_003_PASS_ASYNC
 * @expect compile-pass
 * @section 17.9.2
 * @design async overload 包含 async 方法
 * @note 正向用例：所有方法都是 async
 */
class AsyncHandler {
  async handleInt(a: int): Promise<string> { return "int:" + a }
  async handleStr(a: string): Promise<string> { return "str:" + a }
  async overload handle { handleInt, handleStr }
}
