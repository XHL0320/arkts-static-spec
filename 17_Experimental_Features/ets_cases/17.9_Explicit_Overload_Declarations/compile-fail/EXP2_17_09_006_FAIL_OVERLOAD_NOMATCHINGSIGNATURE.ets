/**
 * @id EXP2_17_09_006_FAIL_OVERLOAD_NOMATCHINGSIGNATURE
 * @expect compile-fail
 * @section 17.9
 * @design 调用 overload 但无匹配签名 — 编译时错误
 * @note 反向用例：参数类型不匹配任何候选
 */
function fInt(a: int): string { return "int" }
function fStr(a: string): string { return "str" }
overload f { fInt, fStr }

function main(): void {
  // boolean 不在任何签名的参数类型中
  let x: boolean = f(true)
}
