/**
 * @id EXP2_17_09_3_002_PASS_INTERFACEOVERLOAD_ADDMETHOD
 * @expect compile-pass
 * @section 17.9.3
 * @design override 接口 overload 时可添加新方法
 * @note 正向用例：实现类的 overload 包含接口中所有方法 + 新方法
 */
interface IParser {
  parseInt(a: int): string
  parseStr(a: string): string
  overload parse { parseInt, parseStr }
}

class ParserExt implements IParser {
  parseInt(a: int): string { return "int:" + a }
  parseStr(a: string): string { return "str:" + a }
  parseBool(a: boolean): string { return "bool:" + a }
  // overload 包含接口所有方法 + 额外方法
  overload parse { parseInt, parseStr, parseBool }
}
