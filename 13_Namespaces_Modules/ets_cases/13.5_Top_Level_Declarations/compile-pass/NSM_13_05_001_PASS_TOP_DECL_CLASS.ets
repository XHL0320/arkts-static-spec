/*
 * @id NSM_13_05_001_PASS_TOP_DECL_CLASS
 * @expect compile-pass
 * @section 13.5
 * @design Top-level class declaration
 */

class Point {
    x: int
    y: int
    constructor(x: int, y: int) {
        this.x = x
        this.y = y
    }
}

function main(): void {
    let p: Point = new Point(1, 2)
}
