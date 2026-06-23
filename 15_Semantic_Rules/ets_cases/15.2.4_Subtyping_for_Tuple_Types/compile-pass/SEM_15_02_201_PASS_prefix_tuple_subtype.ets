/**
 * @id SEM_15_02_201_PASS_prefix_tuple_subtype
 * @expect compile-pass
 * @section 15.2.4
 * @design [string,number] 可赋值给 [string]（前置前缀子类型）
 * @note 来自规范 15.2.4 例：let b: [string] = t2 OK
 */
function main(): void {
    let t2: [string, number] = ["hello", 42]
    let b: [string] = t2
}
