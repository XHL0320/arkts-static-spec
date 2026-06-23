/**
 * @id EXP2_17_09_03_003_PASS_INHERIT
 * @expect compile-pass
 * @section 17.9.3
 * @design 实现类不 override，继承接口 overload
 * @note 正向用例：实现类不显式定义 overload
 */
interface IFormat {
  fmtInt(a: int): string
  fmtStr(a: string): string
  overload fmt { fmtInt, fmtStr }
}

abstract class AbstractFmt implements IFormat {
  fmtInt(a: int): string { return "int:" + a }
  fmtStr(a: string): string { return "str:" + a }
  // 不显式声明 overload，继承接口的
}
