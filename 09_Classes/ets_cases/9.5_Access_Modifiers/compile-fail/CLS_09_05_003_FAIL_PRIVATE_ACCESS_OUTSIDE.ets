/**
 * @id CLS_09_05_003_FAIL_PRIVATE_ACCESS_OUTSIDE
 * @expect compile-fail
 * @section 9.5
 * @design 类外访问private成员导致编译错误
 * @note 反向用例：spec规定private仅声明类内可访问
 */
class PrivCls {
  private secret: int = 42
}
function tryAccess(p: PrivCls): void {
  let x: int = p.secret
}
