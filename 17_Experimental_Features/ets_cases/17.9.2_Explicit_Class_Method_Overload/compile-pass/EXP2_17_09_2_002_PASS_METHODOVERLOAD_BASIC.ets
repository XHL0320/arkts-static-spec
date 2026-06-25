/**
 * @id EXP2_17_09_2_002_PASS_METHODOVERLOAD_BASIC
 * @expect compile-pass
 * @section 17.9.2
 * @design 类方法 overload 基本声明和调用
 * @note 正向用例：类中 overload 不同参数类型的方法
 */
class Printer {
  print(a: int): string { return "int:" + a }
  printStr(a: string): string { return "str:" + a }
  printBool(a: boolean): string { return "bool:" + a }
  overload print { print, printStr, printBool }
}
