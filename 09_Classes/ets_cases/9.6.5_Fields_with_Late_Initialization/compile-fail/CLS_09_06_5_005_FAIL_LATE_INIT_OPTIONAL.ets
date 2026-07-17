/**
 * @id CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL
 * @expect compile-fail
 * @section 9.6.5
 * @design optional late init字段导致编译错误
 * @note 反向用例：PDF原文§9.6.5确认"compile-time error occurs if Is an optional field"
 *       2026-07-17 修正用例代码：原为`val!: string`无optional标记，改为`val!?: string`。
 */
class LateInitOpt {
  val!?: string
}
