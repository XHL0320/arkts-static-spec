/**
 * @id NAM_04_07_03_002_FAIL_READONLY_TUPLE_ASSIGN
 * @expect compile-fail
 * @section 4.7.3
 * @design 对只读元组参数赋值
 * @note 反向用例：验证对只读元组参数的元素赋值编译错误（spec 4.7.3 行 996）
 */
function fooBad(tuple: readonly [number, string]): void {
    let element = tuple[0];
    tuple[0] = element;
}
