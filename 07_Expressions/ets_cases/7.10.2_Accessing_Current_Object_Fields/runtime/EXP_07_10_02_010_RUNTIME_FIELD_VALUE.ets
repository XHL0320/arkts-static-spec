/**
 * @id EXP_07_10_02_010_RUNTIME_FIELD_VALUE
 * @expect runtime
 * @section 7.10.2
 * @design 运行时验证实例字段值：对象创建后字段值正确
 * @note 运行时用例：验证实例字段在运行时具有正确的初始值
 */
class Point {
    x: int = 3
    y: int = 4
}
function main(): void {
    let p: Point = new Point()
    if (p.x != 3) {
        throw new Error("assertion failed: x field value")
    }
    if (p.y != 4) {
        throw new Error("assertion failed: y field value")
    }
    console.log("verified")
}
