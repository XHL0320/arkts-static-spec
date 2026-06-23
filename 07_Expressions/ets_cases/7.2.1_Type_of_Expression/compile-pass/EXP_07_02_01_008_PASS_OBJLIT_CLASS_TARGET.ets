/**
 * @id EXP_07_02_01_008_PASS_OBJLIT_CLASS_TARGET
 * @expect compile-pass
 * @section 7.2.1
 * @design 对象字面量 non-standalone，以类类型作为 target type 可推断
 * @note 正向用例：验证 object literal 需要 target type
 */
class Point {
  x: int = 0
  y: int = 0
}

function testObjLitClassTarget(): void {
  let p: Point = {x: 10, y: 20}
}
