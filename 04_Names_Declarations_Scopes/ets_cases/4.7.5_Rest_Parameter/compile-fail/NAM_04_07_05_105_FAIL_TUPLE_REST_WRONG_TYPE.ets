/**
 * @id NAM_04_07_05_105_FAIL_TUPLE_REST_WRONG_TYPE
 * @expect compile-fail
 * @section 4.7.5
 * @design 元组rest参数类型错误（第3个参数类型不匹配）
 * @note 反向用例：验证 sum(...numbers: [number,number,number]) 调用 sum(1,2,"a") 类型错误（spec 4.7.5 行1190）
 */
function sum(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2]
}
sum(1, 2, "a")
