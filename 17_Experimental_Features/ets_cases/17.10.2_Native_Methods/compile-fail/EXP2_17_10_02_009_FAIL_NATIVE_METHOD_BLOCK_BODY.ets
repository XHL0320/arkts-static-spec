/**
 * @id EXP2_17_10_02_009_FAIL_NATIVE_METHOD_BLOCK_BODY
 * @expect compile-fail
 * @section 17.10.2
 * @design 原生方法不能有 block body：验证 native method 带 { } 函数体产生编译错误 ESE0083
 * @note 反向用例：验证该场景应产生编译时错误 - Native, Abstract and Declare methods cannot have body
 */
class BadNative {
  native foo(): void {
    console.log("should not compile")
  }
}
