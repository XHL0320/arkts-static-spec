/**
 * @id SEM_15_02_04_100_FAIL_tuple_element_mismatch
 * @expect compile-fail
 * @section 15.2.4
 * @design 元组元素类型不匹配时拒绝赋值
 * @note 反向用例：[int, string] 不能赋值给 [string, int]
 */
function main(): void {
    let a: [int, string] = [1, "a"];
    let b: [string, int] = a;
}
