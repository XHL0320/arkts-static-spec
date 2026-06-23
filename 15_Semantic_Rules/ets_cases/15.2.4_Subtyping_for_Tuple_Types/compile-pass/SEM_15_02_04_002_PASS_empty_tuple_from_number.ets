/**
 * @id SEM_15_02_04_002_PASS_empty_tuple_from_number
 * @expect compile-pass
 * @section 15.2.4
 * @design 任何元组类型是 Tuple 的子类型，[] 可接收 [number]
 * @note 来自规范 15.2.4 例：let a: [] = t1 OK
 */
function main(): void {
    let t1: [number] = [42]
    let a: [] = t1
}
