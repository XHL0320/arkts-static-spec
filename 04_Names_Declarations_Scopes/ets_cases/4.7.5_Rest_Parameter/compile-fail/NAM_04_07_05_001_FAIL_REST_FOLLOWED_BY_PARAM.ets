/**
 * @id NAM_04_07_05_001_FAIL_REST_FOLLOWED_BY_PARAM
 * @expect compile-fail
 * @section 4.7.5
 * @design rest参数后还有其他参数
 * @note 反向用例：验证 rest 参数后不能有其他参数
 */
function badRest(...args: number[], extra: string): void {}
