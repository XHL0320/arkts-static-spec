/**
 * @id NAM_04_07_018_FAIL_REST_NOT_ARRAY
 * @expect compile-fail
 * @section 4.7.5
 * @design rest参数非数组类型
 * @note 反向用例：验证 rest 参数必须为数组/元组类型
 */
function badRestType(...args: number): void {}
