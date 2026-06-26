/**
 * @id EXP_07_19_034_RUNTIME_FIELD_ACCESS
 * @expect runtime
 * @section 7.19
 * @design 验证 ! 字段访问在运行时非空时正常返回字段值
 * @note 运行时用例：obj!.field 正常返回值
 */
class DataBox {
    value: int = 99
}

function main(): void {
    let b: DataBox | undefined = new DataBox()
    let v: int = b!.value
    if (v != 99) {
        throw new Error("assertion failed: expected 99, got " + v)
    }
    console.log("verified")
}
