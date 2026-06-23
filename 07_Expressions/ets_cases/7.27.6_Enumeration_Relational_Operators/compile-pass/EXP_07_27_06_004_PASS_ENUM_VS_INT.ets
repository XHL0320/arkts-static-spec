/**
 * @id EXP_07_27_06_004_PASS_ENUM_VS_INT
 * @expect compile-pass
 * @section 7.27.6
 * @design 枚举类型与 int 关系比较 — es2panda 接受
 * @note 正向用例：⚠️ SPEC 不一致：spec 要求不同枚举类型或 enum vs int 应报错，但 es2panda 编译通过
 */
enum Color { RED, GREEN, BLUE }
function testEnumVsInt(): void {
  let a: Color = Color.RED
  let b: int = 1
  let r: boolean = a < b
  console.log(r.toString())
}
