/**
 * @id CLS_09_06_1_007_RUNTIME_INSTANCE_FIELD_PER_OBJ
 * @expect runtime
 * @section 9.6.1
 * @design instance字段每个实例独立验证
 * @note 运行时用例：验证不同实例的instance字段互不影响
 */
class InstPerObj {
  val: int = 0
}
function main(): void {
  let a = new InstPerObj()
  let b = new InstPerObj()
  a.val = 10
  b.val = 20
  if (a.val != 10) { throw new Error("a.val should be 10") }
  if (b.val != 20) { throw new Error("b.val should be 20") }
  console.log("Instance field per obj verified")
}
