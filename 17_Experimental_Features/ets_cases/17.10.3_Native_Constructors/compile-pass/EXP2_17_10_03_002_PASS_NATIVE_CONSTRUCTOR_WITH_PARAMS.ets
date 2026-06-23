/**
 * @id EXP2_17_10_03_002_PASS_NATIVE_CONSTRUCTOR_WITH_PARAMS
 * @expect compile-pass
 * @section 17.10.3
 * @design 带参数 native 构造函数声明：验证 native constructor(x: int, y: double) 声明的编译
 * @note 正向用例：验证带参数 native 构造函数声明可编译通过
 */
class NativeCtorWithParams {
  native constructor(val: int, factor: double)
}

function testNativeCtorWithParams(): void {
  let obj: NativeCtorWithParams | null = null
  console.log("native constructor with params type reference OK")
}
