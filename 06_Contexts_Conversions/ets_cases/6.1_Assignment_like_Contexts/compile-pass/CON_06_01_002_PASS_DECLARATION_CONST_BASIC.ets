/**
 * @id CON_06_01_002_PASS_DECLARATION_CONST_BASIC
 * @expect compile-pass
 * @section 6.1
 * @design Declaration context: const 常量声明，表达式类型与目标类型完全匹配
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testDeclarationConstBasic(): void {
  const numVal: number = 42
  const strVal: string = "hello"
  const boolVal: boolean = false
  const intVal: int = -1
}
