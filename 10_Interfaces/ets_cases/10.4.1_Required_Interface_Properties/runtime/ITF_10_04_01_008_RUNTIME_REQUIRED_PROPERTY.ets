/**
 * @id ITF_10_04_01_008_RUNTIME_REQUIRED_PROPERTY
 * @expect runtime
 * @section 10.4.1
 * @design 必需属性运行时验证
 * @note 运行时用例：验证必需属性在运行时正确
 */
interface Point {
    x: number;
    y: number;
}
class Coord implements Point {
    x: number = 10;
    y: number = 20;
}
function main(): void {
    let c: Coord = new Coord();
    if (c.x != 10 || c.y != 20) throw new Error("assertion failed");
}
