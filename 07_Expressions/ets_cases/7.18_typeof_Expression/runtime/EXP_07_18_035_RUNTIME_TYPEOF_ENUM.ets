/**
 * @id EXP_07_18_035_RUNTIME_TYPEOF_ENUM
 * @expect runtime
 * @section 7.18
 * @design 验证 typeof enum 运行时值
 * @note 运行时用例：int 枚举→"int", string 枚举→"string"
 */
enum Color { R, G, B }
enum Direction { UP = "up", DOWN = "down" }

function main(): void {
    let c: Color = Color.R
    let tc: string = typeof c
    if (tc != "int") {
        throw new Error("assertion failed: typeof int enum = " + tc)
    }

    let d: Direction = Direction.UP
    let td: string = typeof d
    if (td != "string") {
        throw new Error("assertion failed: typeof string enum = " + td)
    }

    console.log("verified")
}
