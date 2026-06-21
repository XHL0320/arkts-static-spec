/**
 * @id NAM_04_07_05_005_RUNTIME_SPREAD_TUPLE
 * @expect runtime
 * @section 4.7.5
 * @design 元组展开传给元组rest参数
 * @note 运行时用例：验证 let x: [number,number,number] = [1,2,3]; sum(...x) 返回6（spec 4.7.5 行1216-1226）
 */
function sum(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2]
}
function main(): void {
    let x: [number, number, number] = [1, 2, 3]
    let r = sum(...x)
    if (r != 6) throw new Error("assertion failed: " + r)
    console.log("verified")
}
