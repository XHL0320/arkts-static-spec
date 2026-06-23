/**
 * @id EXP_07_17_02_011_RUNTIME_SUBTYPE_CAST_OK
 * @expect runtime
 * @section 7.17.2
 * @design 验证子类变量 as 超类运行时成功
 * @note 运行时用例：D 实例 as C (D extends C) 运行时成功，返回原实例
 */
class C {
    val: int = 0
}
class D extends C {
    val: int = 42
}

function main(): void {
    let d = new D()
    let c: C = d as C
    if (c.val != 42) {
        throw new Error("assertion failed")
    }
    console.log("verified")
}
