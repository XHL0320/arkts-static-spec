/**
 * @id NAM_04_07_05_005_FAIL_TUPLE_REST_WRONG_COUNT_1
 * @expect compile-fail
 * @section 4.7.5
 * @design 元组rest参数数量错误（1个参数代替3个）
 * @note 反向用例：验证 sum(...numbers: [number,number,number]) 调用 sum(1) 数量不匹配编译报错（spec 4.7.5 行1187）
 */
function sum(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2]
}
sum(1)
