/**
 * @id ERR_12_01_009_FAIL_THROW_NULL_UNDEFINED
 * @expect compile-fail
 * @section 12.1
 * @design throw null/undefined 应编译失败
 * @note 反向用例：Spec 明确 null 或 undefined 不能被 throw
 */
function testThrowNullUndefinedFail(): void {
  throw null
  throw undefined
}
