/**
 * @id CLS_09_07_001_PASS_GENERAL_METHOD_SYNTAX
 * @expect compile-pass
 * @section 9.7
 * @design 基本方法声明语法 — classMethodDeclaration: methodModifier* identifier signature block?
 * @note 正向用例：无修饰符、带返回类型、void返回、多参数方法
 */
class GeneralMethods {
  noReturn(): void {}
  withReturn(): int { return 42 }
  multiParam(a: int, b: string, c: boolean): string { return b }
  noParams(): int { return 0 }
}
