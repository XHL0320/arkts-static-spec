/**
 * @id CON_06_02_016_FAIL_VOID_STRING_CONCAT
 * @expect compile-fail
 * @section 6.2
 * @design void + string 应编译失败（void 不在 string conversion 规则表中）
 * @note ⚠️ SPEC 不一致：spec §6.2 未列出 void 的 string 转换规则
 */
function voidFunc(): void {}
function testVoidStringConcatFail(): void {
  let s: string = "result: " + voidFunc()
}
