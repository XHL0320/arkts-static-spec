/**
 * @id EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER
 * @expect compile-fail
 * @section 17.13.2
 * @design 原始类型 string 不能作为接收者类型 — spec 要求产生编译错误
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求原始类型不能作为接收者类型，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
function reverseStr(this: string): string { return this + this }
function testStringReceiver(): void {
  let s: string = "hello"
  let r: string = s.reverseStr()
}
