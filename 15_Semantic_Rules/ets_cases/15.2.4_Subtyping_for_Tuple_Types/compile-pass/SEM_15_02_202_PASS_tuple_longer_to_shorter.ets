/**
 * @id SEM_15_02_202_PASS_tuple_longer_to_shorter
 * @expect compile-pass
 * @section 15.2.4
 * @design 更长元组（前缀相同）是更短元组的子类型：n >= m
 * @note 来自规范 15.2.4 例：let e: [string,number] = d OK
 */
function main(): void {
    let d: [string, number, boolean] = ["a", 1, true]
    let e: [string, number] = d
}
