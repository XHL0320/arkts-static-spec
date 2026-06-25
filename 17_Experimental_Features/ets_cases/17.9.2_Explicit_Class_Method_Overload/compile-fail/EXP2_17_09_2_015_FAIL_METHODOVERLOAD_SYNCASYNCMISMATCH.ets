/**
 * @id EXP2_17_09_2_015_FAIL_METHODOVERLOAD_SYNCASYNCMISMATCH
 * @expect compile-fail
 * @section 17.9.2
 * @design 非 async overload 不能包含 async 方法
 * @note 反向用例：普通 overload 中包含 async 方法
 */
class SyncAsyncFail {
  m1(a: int): string { return "int:" + a }
  async m2(a: string): Promise<string> { return "str:" + a }
  overload busy { m1, m2 }
}
