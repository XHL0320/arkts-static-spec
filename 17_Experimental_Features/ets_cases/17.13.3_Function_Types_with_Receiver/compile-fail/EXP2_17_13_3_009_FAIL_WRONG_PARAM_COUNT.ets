/**
 * @id EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT
 * @expect compile-fail
 * @section 17.13.3
 * @design 参数数量不匹配的lambda赋值给函数类型变量应编译失败
 * @note 反向用例：spec 要求报错（参数数量不匹配），但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求参数数量不匹配应报错，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
class Data { value: number = 0 }
type DataOp = (this: Data, a: number, b: number) => number
function testWrongParamCount(): void {
  let op: DataOp = (this: Data): number => { return this.value }
}
