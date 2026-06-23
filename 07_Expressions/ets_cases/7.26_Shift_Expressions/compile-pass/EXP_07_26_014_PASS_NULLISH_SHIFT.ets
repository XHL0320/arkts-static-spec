/**
 * @id EXP_07_26_014_PASS_NULLISH_SHIFT
 * @expect compile-pass
 * @section 7.26
 * @design nullish 类型移位 — es2panda 未拒绝
 * @note 正向用例：⚠️ SPEC 不一致：spec 要求数值类型或 bigint，但 es2panda 接受 int|null 作为移位操作数
 */
function testNullishShift(): void {
  let a: int | null = 8
  let r: int = a << 2
  console.log(r.toString())
}
