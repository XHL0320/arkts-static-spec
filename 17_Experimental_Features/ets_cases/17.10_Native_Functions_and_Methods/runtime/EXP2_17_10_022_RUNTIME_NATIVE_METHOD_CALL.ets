/**
 * @id EXP2_17_10_022_RUNTIME_NATIVE_METHOD_CALL
 * @expect runtime
 * @section 17.10
 * @design 运行时验证 native 方法调用行为
 * @note 运行时用例：通过类实例调用 native 方法
 */
class NativeAccess {
  native fetch(): string
}

function main(): void {
  let a: NativeAccess = new NativeAccess()
  let s: string = a.fetch()
  console.log(s)
}
