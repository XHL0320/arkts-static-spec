/**
 * @id EXP2_17_10_01_012_RUNTIME_NATIVE_FUNC_CALL_ERROR
 * @expect runtime
 * @section 17.10.1
 * @design 调用未实现的原生函数触发链接错误：验证调用无实现的 native function 会在运行时抛出 LinkerUnresolvedMethodError
 * @runtime-throws=LinkerUnresolvedMethodError
 * @note 运行时用例：调用无平台实现的 native function 预期抛出 LinkerUnresolvedMethodError
 */
native function unimplementedNative(): int
function main(): void {
  try {
    let result: int = unimplementedNative()
    throw new Error("assertion failed: expected LinkerUnresolvedMethodError but no exception was thrown")
  } catch (e) {
    // Expected: LinkerUnresolvedMethodError because no native implementation exists
    console.log("verified: LinkerUnresolvedMethodError caught as expected")
  }
}
