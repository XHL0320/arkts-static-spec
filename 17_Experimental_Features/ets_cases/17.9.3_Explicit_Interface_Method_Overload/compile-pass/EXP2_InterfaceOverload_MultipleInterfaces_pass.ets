/**
 * @id EXP2_InterfaceOverload_MultipleInterfaces_pass
 * @expect compile-pass
 * @section 17.9.3
 * @design 实现多个接口，各有不同的 overload
 * @note 正向用例：多个接口的不同 overload 可以共存
 */
interface IA {
  aInt(a: int): string
  aStr(a: string): string
  overload dispatch { aInt, aStr }
}

interface IB {
  bInt(a: int): int
  bDbl(a: double): int
  overload convert { bInt, bDbl }
}

class MultiImpl implements IA, IB {
  aInt(a: int): string { return "a:" + a }
  aStr(a: string): string { return "a:" + a }
  bInt(a: int): int { return a }
  bDbl(a: double): int { return new Double(a).toInt() }
  overload dispatch { aInt, aStr }
  overload convert { bInt, bDbl }
}
