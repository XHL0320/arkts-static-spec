/**
 * @id EXP_07_02_01_016_FAIL_STANDALONE_OBJLIT
 * @expect compile-fail
 * @section 7.2.1
 * @design standalone 对象字面量无法推断类型，应编译时错误
 * @note 反向用例：验证 standalone object literal 无法推断类型，参考 spec: `let x = {x: 10, y: 10}` 报错
 */
class Point {
  x: int = 0
  y: int = 0
}

function testStandaloneObjLit(): void {
  let p = {x: 10, y: 10}
}
