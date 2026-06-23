/**
 * @id CLS_09_06_3_003_FAIL_OPTIONAL_ASSIGN_TO_NONNULLISH
 * @expect compile-fail
 * @section 9.6.3
 * @design optional字段赋值给non-nullish类型导致编译错误
 * @note 反向用例：optional字段类型为T|undefined，不可赋值给T
 */
class OptAssign {
  val?: string
}
function assignOpt(o: OptAssign): void {
  let s: string = o.val
}
