/**
 * @id EXP_07_11_02_010_RUNTIME_OVERLOAD_RESOLUTION
 * @expect runtime
 * @section 7.11.2
 * @design 运行时重载解析：多个候选实体时，Overload Resolution 根据参数类型选择正确的方法并执行
 * @note 运行时用例：验证重载解析后调用的方法返回值正确
 */
class Processor {
    process(x: int): string {
        return "int:" + x.toString()
    }
    process(x: string): string {
        return "string:" + x
    }
    process(x: int, y: int): int {
        return x + y
    }
}

function main(): void {
    let p: Processor = new Processor()

    let r1: string = p.process(10)
    if (r1 != "int:10") {
        throw new Error("assertion failed: got " + r1)
    }

    let r2: string = p.process("hello")
    if (r2 != "string:hello") {
        throw new Error("assertion failed: got " + r2)
    }

    let r3: int = p.process(7, 8)
    if (r3 != 15) {
        throw new Error("assertion failed: got " + r3.toString())
    }

    console.log("verified")
}
