/**
 * @id EXP2_17_10_001_COMPILE_PASS_NATIVE_FUNC_DECL
 * @expect compile-pass
 * @section 17.10
 * @design 验证 native 函数声明（无 body）编译通过
 * @note 正向用例：native 函数标记为平台依赖实现，声明时不能有函数体
 */
native function nativeFunc(): void

function main(): void {
  console.log("native function declared")
}
