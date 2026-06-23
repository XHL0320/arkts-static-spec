/**
 * @id CLS_09_06_4_005_RUNTIME_INITIALIZER_EVAL
 * @expect runtime
 * @section 9.6.4
 * @design 初始化器表达式求值运行时验证
 * @note 运行时用例：验证初始化器在实例创建时执行
 */
class InitEval {
  val: int = InitEval.compute()
  static compute(): int { return 42 }
}
function main(): void {
  let e = new InitEval()
  if (e.val != 42) { throw new Error("e.val should be 42") }
  console.log("Initializer eval verified")
}
