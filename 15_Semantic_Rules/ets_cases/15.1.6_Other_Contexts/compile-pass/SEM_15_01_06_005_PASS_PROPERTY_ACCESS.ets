/**
 * @id SEM_15_01_06_005
 * @expect compile-pass
 * @section 15.1.6
 * @design 其他上下文：属性访问表达式推断
 * @note 正向用例：对象属性访问后的类型推断
 */
class Point { x: int = 0; y: int = 0; }
function main(): void {
    let p: Point = new Point();
    p.x = 10;
    let val = p.x;
    let v: int = val;
    console.log(`${v}`);
}
