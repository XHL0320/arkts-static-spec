/**
 * @id EXP2_InterfaceOverload_DuplicateOverload_fail
 * @expect compile-fail
 * @section 17.9.3
 * @design 多接口继承同名 overload 但实现类未 override — 编译错误
 * @note 反向用例：两个接口有同名 overload，实现类未覆盖
 */
interface IX {
  x(a: int): string
  overload convert { x }
}

interface IY {
  y(a: string): string
  overload convert { y }
}

class BadMulti implements IX, IY {
  x(a: int): string { return "x" }
  y(a: string): string { return "y" }
  // 未 override convert — 两个接口都有 convert，产生冲突，应编译失败
}
