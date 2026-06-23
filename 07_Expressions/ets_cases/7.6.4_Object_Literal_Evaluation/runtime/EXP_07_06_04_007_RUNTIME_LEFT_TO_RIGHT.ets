/**
 * @id EXP_07_06_04_007_RUNTIME_LEFT_TO_RIGHT
 * @expect runtime
 * @section 7.6.4
 * @design 从左到右字段求值顺序验证：使用全局 order 追踪器按字段求值顺序附加标记，
 *         验证先求值左字段表达式再右字段，赋值顺序也对应
 * @note 运行时用例：验证字段表达式从左到右求值
 */
let order: string = ""

class Data {
    a: string = ""
    b: string = ""
    c: string = ""
}

function setA(): string {
    order = order + "A"
    return "val_a"
}

function setB(): string {
    order = order + "B"
    return "val_b"
}

function setC(): string {
    order = order + "C"
    return "val_c"
}

function main(): void {
    order = ""
    let d: Data = {a: setA(), b: setB(), c: setC()}
    if (order != "ABC") {
        throw new Error("assertion failed: order != ABC, got " + order)
    }
    if (d.a != "val_a") {
        throw new Error("assertion failed: a != val_a")
    }
    if (d.b != "val_b") {
        throw new Error("assertion failed: b != val_b")
    }
    if (d.c != "val_c") {
        throw new Error("assertion failed: c != val_c")
    }
    console.log("verified")
}
