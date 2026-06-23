/**
 * @id STM_08_08_009_RUNTIME_FOR_EXISTING_VAR
 * @expect runtime
 * @section 8.8
 * @design 使用已存在变量作为循环索引，验证循环后索引变量值正确
 * @note 运行时用例：int idx = 0; for (; idx < 5; idx++) 之后 idx == 5
 */
function main(): void {
    let idx: int = 0
    for (; idx < 5; idx++) {
        // empty body
    }
    if (idx != 5) {
        throw new Error("existing var after for failed, expected 5 but got " + idx)
    }
    console.log("verified")
}
