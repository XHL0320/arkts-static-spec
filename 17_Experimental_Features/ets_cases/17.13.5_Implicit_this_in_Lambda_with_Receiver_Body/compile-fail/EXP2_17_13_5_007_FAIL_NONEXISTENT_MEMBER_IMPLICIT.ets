/**
 * @id EXP2_17_13_5_007_FAIL_NONEXISTENT_MEMBER_IMPLICIT
 * @expect compile-fail
 * @section 17.13.5
 * @design 隐式访问不存在的成员应编译失败 — ESE0143
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Empty {}
function testNonexistentMember(): void {
  let access = (this: Empty): string => { return nonexistentField }
  let e: Empty = new Empty()
  let r: string = access(e)
}
