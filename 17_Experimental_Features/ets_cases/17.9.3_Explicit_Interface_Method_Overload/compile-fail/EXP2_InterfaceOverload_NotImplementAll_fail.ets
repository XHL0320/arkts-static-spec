/**
 * @id EXP2_InterfaceOverload_NotImplementAll_fail
 * @expect compile-fail
 * @section 17.9.3
 * @design 实现接口 overload 但未实现该方法 — 编译错误
 * @note 反向用例：类不实现接口方法但声称实现了接口
 */
interface IRequired {
  reqInt(a: int): string
  reqStr(a: string): string
  overload required { reqInt, reqStr }
}

class IncompleteImpl implements IRequired {
  reqInt(a: int): string { return "int:" + a }
  // 缺少 reqStr 实现 — 应编译失败
  overload required { reqInt }
}
