/**
 * @id EXP2_17_10_01_006_FAIL_NATIVE_WITH_BLOCK_BODY
 * @expect compile-fail
 * @section 17.10.1
 * @design 原生函数不能有函数体（block body）：验证 native function 带 block body 产生编译错误 ESE0083
 * @note 反向用例：验证该场景应产生编译时错误 - Native, Abstract and Declare methods cannot have body
 */
native function foo(): void {
  console.log("should not compile")
}
