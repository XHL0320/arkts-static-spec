/**
 * @id EXP2_FuncOverload_WrongParamType_fail
 * @expect compile-fail
 * @section 17.9.1
 * @design 调用 overload 但参数类型不匹配任何重载 — 编译错误
 * @note 反向用例：传入未定义参数类型的参数
 */
function fInt(a: int): int { return a }
function fStr(a: string): string { return a }
overload f { fInt, fStr }

function main(): void {
  // boolean 不在任何签名中 — 应编译失败
  let x: boolean = f(true)
}
