/**
 * @id EXP2_17_11_004_COMPILE_PASS_FINAL_AS_TYPE
 * @expect compile-pass
 * @section 17.11
 * @design 验证 final 类作为类型注解编译通过
 * @note 正向用例：final 类可作为变量类型、参数类型使用
 */
final class Token {
  id: int = 0
}

function useToken(t: Token): void {
  console.log(t.id.toString())
}

function main(): void {
  let tok: Token = new Token()
  tok.id = 1
  useToken(tok)
}
