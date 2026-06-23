/**
 * @id EXP_07_18_007_PASS_TYPEOF_ENUM
 * @expect compile-pass
 * @section 7.18
 * @design 验证 typeof enum 编译通过
 * @note 正向用例：int 枚举→"int", string 枚举→"string" 编译通过
 */
enum Color { R, G, B }
enum Direction { UP = "up", DOWN = "down" }

function testIntEnum(): void {
    let c: Color = Color.R
    let t: string = typeof c
}

function testStringEnum(): void {
    let d: Direction = Direction.UP
    let t: string = typeof d
}
