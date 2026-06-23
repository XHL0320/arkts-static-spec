/**
 * @id EXP2_17_09_04_003_PASS_SAME_NAME_INTERFACE
 * @expect compile-pass
 * @section 17.9.4
 * @design 接口中 overload 名与接口方法同名
 * @note 正向用例：接口 overload 名与某个接口方法同名
 */
interface ICaller {
  call(a: int): string
  callStr(a: string): string
  overload call { call, callStr }
}

class CallerImpl implements ICaller {
  call(a: int): string { return "call-int:" + a }
  callStr(a: string): string { return "call-str:" + a }
  overload call { call, callStr }
}
