/**
 * @id EXP2_17_10_002_COMPILE_PASS_NATIVE_METHOD_DECL
 * @expect compile-pass
 * @section 17.10
 * @design 验证 native 方法声明（无 body）编译通过
 * @note 正向用例：native 方法声明时不能有方法体
 */
class NativeHost {
  native nativeMethod(): void
}

function main(): void {
  let h: NativeHost = new NativeHost()
  console.log("native method declared")
}
