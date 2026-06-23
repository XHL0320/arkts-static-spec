/**
 * @id EXP2_17_10_03_001_PASS_NATIVE_CONSTRUCTOR_NO_PARAMS
 * @expect compile-pass
 * @section 17.10.3
 * @design 无参数 native 构造函数声明：验证 native constructor() 声明的编译
 * @note 正向用例：验证无参数 native 构造函数声明可编译通过
 */
class NativeCtorNoParams {
  native constructor()
}

function testNativeCtorNoParams(): void {
  let obj: NativeCtorNoParams | null = null
  console.log("native constructor class type reference OK")
}
