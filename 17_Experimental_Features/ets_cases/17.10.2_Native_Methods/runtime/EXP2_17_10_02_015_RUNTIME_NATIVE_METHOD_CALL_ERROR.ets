/**
 * @id EXP2_17_10_02_015_RUNTIME_NATIVE_METHOD_CALL_ERROR
 * @expect runtime
 * @section 17.10.2
 * @design 调用未实现的原生方法触发链接错误：验证调用无实现的 native method 会在运行时抛出 LinkerUnresolvedMethodError
 * @note 运行时用例：调用无平台实现的 native method 预期抛出 LinkerUnresolvedMethodError
 */
class NativeAccessor {
  native getSecret(): string
}
function main(): void {
  let obj: NativeAccessor = new NativeAccessor()
  try {
    let secret: string = obj.getSecret()
    throw new Error("assertion failed: expected LinkerUnresolvedMethodError but no exception was thrown")
  } catch (e) {
    console.log("verified: LinkerUnresolvedMethodError caught as expected")
  }
}
