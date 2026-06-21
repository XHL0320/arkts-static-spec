/**
 * @id NAM_04_07_05_004_RUNTIME_TUPLE_REST_OK
 * @expect runtime
 * @section 4.7.5
 * @design 元组rest参数正确调用
 * @note 运行时用例：验证 sum(...numbers: [number,number,number]) 调用 sum(1,2,3) 返回6（spec 4.7.5 行1192）
 */
function sum(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2]
}
function main(): void {
    let r = sum(1, 2, 3)
    if (r != 6) throw new Error("assertion failed: " + r)
    console.log("verified")
}
