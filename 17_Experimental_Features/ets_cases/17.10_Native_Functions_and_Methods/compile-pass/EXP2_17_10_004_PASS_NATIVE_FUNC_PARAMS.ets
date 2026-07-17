/**
 * @id EXP2_17_10_004_PASS_NATIVE_FUNC_PARAMS
 * @expect compile-pass
 * @section 17.10
 * @design 验证带参数的 native 函数声明编译通过
 * @note 正向用例：native 函数可以有参数和返回类型
 */
native function nativeAdd(a: int, b: int): int

function main(): void {
  console.log("native function with params")
}

