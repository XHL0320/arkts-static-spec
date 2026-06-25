/**
 * @id EXP2_MethodOverload_AsyncMismatch_fail
 * @expect compile-fail
 * @section 17.9.2
 * @design async overload 不能包含非 async 方法 — 编译错误
 * @note 反向用例：async overload 中混入普通方法
 */
class AsyncFail {
  async m1(a: int): Promise<string> { return "int:" + a }
  m2(a: string): string { return "str:" + a }  // 非 async
  async overload busy { m1, m2 }
}
