/**
 * @id EXP2_17_10_021_RUNTIME_NATIVE_FUNC_CALL
 * @expect runtime
 * @section 17.10
 * @design 运行时验证 native 函数调用行为
 * @note 运行时用例：调用声明的 native 函数，验证运行时链接行为
 */
native function sum(a: int, b: int): int

function main(): void {
  let r: int = sum(1, 2)
  console.log(r.toString())
}
