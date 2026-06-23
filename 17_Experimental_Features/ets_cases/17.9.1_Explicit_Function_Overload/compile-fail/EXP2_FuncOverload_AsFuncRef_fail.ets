/**
 * @id EXP2_17_09_01_012_FAIL_OVERLOAD_NAME_AS_FUNC_REF
 * @expect compile-fail
 * @section 17.9.1
 * @design overload 名不在 Function Reference 中考虑
 * @note 反向用例：尝试将 overload 名作为函数引用赋值给函数类型变量
 */
function fInt(a: int): int { return a }
function fStr(a: string): string { return a }
overload f { fInt, fStr }

function main(): void {
  // overload 名不能作为函数引用 — 应编译失败
  let fn: (a: int) => int = f
}
