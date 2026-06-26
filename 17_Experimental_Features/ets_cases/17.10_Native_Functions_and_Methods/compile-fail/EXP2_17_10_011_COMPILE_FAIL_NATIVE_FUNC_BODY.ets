/**
 * @id EXP2_17_10_011_COMPILE_FAIL_NATIVE_FUNC_BODY
 * @expect compile-fail
 * @section 17.10
 * @design 验证 native 函数不能有 body——应报编译错误
 * @note 反向用例：spec §17.10 要求 native 函数有 body 时 compile-time error
 */
native function badNative(): void {
  console.log("body")
}

function main(): void {}
