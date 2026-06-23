/**
 * @id EXP_07_32_01_007_RUNTIME_FIELD_ASSIGN
 * @expect runtime
 * @section 7.32.1
 * @design 字段赋值运行时验证

 * @note 运行时用例：实际执行验证字段赋值
 */
class C { f: int = 0 }
function main(): void {
  let c: C = new C(); c.f = 42
  if (c.f != 42) { throw new Error("assertion failed: field assignment") }
  console.log("verified")
}
