/**
 * @id LEX_02_01_013_FAIL_LONE_LOW_SURROGATE
 * @expect compile-pass
 * @section 2.1
 * @design 反向用例：spec要求字符串中不允许孤立低代理(U+DC00)，但编译器实际允许
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec/experimental.md 未明确定义孤立代理规则，但Unicode规范(UAX#16)要求代理必须成对使用
 *       分类：D 类（Spec 与实现不一致）
 */
function testLoneLowSurrogate(): void {
  let s: string = "\uDC00"
}
