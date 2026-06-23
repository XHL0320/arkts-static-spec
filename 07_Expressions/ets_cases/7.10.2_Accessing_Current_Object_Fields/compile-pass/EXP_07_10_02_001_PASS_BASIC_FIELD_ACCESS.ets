/**
 * @id EXP_07_10_02_001_PASS_BASIC_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.10.2
 * @design 基本实例字段访问：通过 obj.field 语法读取实例字段
 * @note 正向用例：验证实例字段访问时 objectReference 采用 primaryExpression 形式
 */
class Point {
    x: int = 10
    y: int = 20
}
let p: Point = new Point()
let px: int = p.x
let py: int = p.y
