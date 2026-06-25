/**
 * @id EXP2_17_09_3_004_PASS_INTERFACEOVERLOAD_IMPLEMENTS
 * @expect compile-pass
 * @section 17.9.3
 * @design 实现类 override 接口 overload，包含所有方法
 * @note 正向用例：实现类正确 override
 */
interface IFoo {
  fooInt(a: int): string
  fooStr(a: string): string
  overload foo { fooInt, fooStr }
}

class FooImpl implements IFoo {
  fooInt(a: int): string { return "int:" + a }
  fooStr(a: string): string { return "str:" + a }
  overload foo { fooInt, fooStr }
}
