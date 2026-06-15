/**
 * @id LEX_02_07_032_PASS_TYPE_OBJECT_ALIAS
 * @expect compile-pass
 * @section 2.7
 * @design 类型关键字别名: Object 与 object 同义
 * @note 正向用例：主名 + 别名（同时区分大小写）
 */
function test032(): void {
  let a: Object = new Object()
  let b: object = a
}
