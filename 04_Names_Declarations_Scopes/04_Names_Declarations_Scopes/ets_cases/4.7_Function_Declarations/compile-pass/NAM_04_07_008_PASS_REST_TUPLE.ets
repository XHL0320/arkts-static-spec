/**
 * @id NAM_04_07_008_PASS_REST_TUPLE
 * @expect compile-pass
 * @section 4.7.5
 * @design rest参数-元组类型
 * @note 正向用例：验证元组类型 rest 参数
 */
function sumTup(...numbers: [number, number, number]): number {
    return numbers[0] + numbers[1] + numbers[2];
}
