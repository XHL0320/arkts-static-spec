/**
 * @id TYP_03_08_007_PASS_ANY_FIELD_ACCESS_IMPLEMENTATION
 * @expect compile-pass
 * @section 3.8
 * @design Any 上字段访问（实测发现：编译器允许，与 spec §3.8 描述不一致）
 * @note 正向用例：记录实测行为；spec 描述与实现差异已记入 design_issues_report_3.8.md
 */
class WithField7 {
  field: int = 0
}

function testAnyFieldAccess(): void {
  let a: Any = new WithField7()
  // spec §3.8 说 Any 无字段，但实测编译通过
  let f: int = a.field
}