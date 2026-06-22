/**
 * @id ERR_12_01_006_FAIL_THROW_NOT_ERROR
 * @expect compile-fail
 * @section 12.1
 * @design throw 非 Error 类型应编译失败
 * @note 反向用例
 */
function testThrowNotErrorFail(): void {
  throw 42
  throw "error"
}