/**
 * @id EXP_07_11_01_003_PASS_CLASS_EXPR_METHOD
 * @expect compile-pass
 * @section 7.11.1
 * @design expression (class) 形式：类实例表达式调用实例方法
 * @note 正向用例：验证 obj.method() 中 obj 为类类型时编译通过
 */
class Point {
    x: int = 0
    y: int = 0
    move(dx: int, dy: int): void {
        this.x = this.x + dx
        this.y = this.y + dy
    }
    distance(): int {
        return this.x * this.x + this.y * this.y
    }
}
let p: Point = new Point()
p.move(3, 4)
let d: int = p.distance()
