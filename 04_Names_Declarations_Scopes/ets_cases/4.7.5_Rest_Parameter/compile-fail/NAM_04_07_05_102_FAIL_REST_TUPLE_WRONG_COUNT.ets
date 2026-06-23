/**
 * @id NAM_04_07_05_102_FAIL_REST_TUPLE_WRONG_COUNT
 * @expect compile-fail
 * @section 4.7.5
 * @design rest元组参数数量不匹配
 * @note 反向用例：验证 rest 元组类型参数数量不匹配编译错误
 */
function sumTwo(...nums: [number, number, number]): number {
    return nums[0] + nums[1] + nums[2];
}
let r = sumTwo();
