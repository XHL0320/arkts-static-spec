/*
 * @id NSM_13_06_001_PASS_EXPORT_CLASS
 * @expect compile-pass
 * @section 13.6
 * @design export class declaration
 */

export class Point {
    x: int
    y: int
    constructor(x: int, y: int) {
        this.x = x
        this.y = y
    }
}
