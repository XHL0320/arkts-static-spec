/**
 * @id CLS_09_06_5_009_FAIL_LATE_INIT_NULLISH_TYPE
 * @expect compile-fail
 * @section 9.6.5
 * @design late init字段为nullish类型导致编译错误
 * @note 反向用例：spec规定late init字段不能为nullish类型（包括T | null、T | undefined等）
 *       Spec依据：spec §9.6.5 "Field with late initialization cannot be of a
 *       nullish type. Otherwise, a compile-time error occurs."
 *       注：CLS_09_06_5_005已测试optional(?)的nullish形式，
 *       本用例补充测试显式union类型的nullish形式
 */
class LateInitNullish {
  val!: number | null
}
