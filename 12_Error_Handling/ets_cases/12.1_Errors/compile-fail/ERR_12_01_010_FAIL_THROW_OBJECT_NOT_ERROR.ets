/**
 * @id ERR_12_01_010_FAIL_THROW_OBJECT_NOT_ERROR
 * @expect compile-fail
 * @section 12.1
 * @design throw 的表达式类型必须 assignable to Error
 * @note 反向用例：普通对象非 Error 子类，不能被 throw
 */
class NotError {}
function testThrowObjectNotErrorFail(): void {
  throw new NotError()
}
