/**
 * @id CON_06_02_028_FAIL_FLOAT_ZERO_STRING_LOSS
 * @expect compile-fail
 * @section 6.2
 * @design 浮点零 string 转换丢失 `.0`：0.0 → "0" 而非 "0.0"
 * @note ⚠️ SPEC 不一致：spec §6.2 要求 "without the loss of information"
 *       原 CON_06_02_017 被改为 1.0 规避此问题
 */
function testFloatZeroStringLoss(): void {
  let s: string = 0.0 + " is zero"
  if (s != "0.0 is zero") {}
}
