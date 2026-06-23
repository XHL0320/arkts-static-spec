/**
 * @id NAM_04_07_05_005_PASS_TUPLE_REST_OK
 * @expect compile-pass
 * @section 4.7.5
 * @design 元组rest参数编译验证
 * @note 能编译通过，运行时入口问题暂不可执行
 */
function sum(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2]
}
function main(): void {
    let r = sum(1, 2, 3)
    if (r != 6) throw new Error("assertion failed: " + r)
    console.log("verified")
}
