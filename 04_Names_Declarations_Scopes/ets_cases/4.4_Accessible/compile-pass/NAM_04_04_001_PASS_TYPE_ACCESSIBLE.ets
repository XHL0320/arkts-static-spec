/**
 * @id NAM_04_04_001_PASS_TYPE_ACCESSIBLE
 * @expect compile-pass
 * @section 4.4
 * @design 类型名可访问用于声明
 * @note 正向用例：验证可访问的类型名用于变量声明
 */
class Point {
    x: number = 0;
    y: number = 0;
}
let p: Point = new Point();
