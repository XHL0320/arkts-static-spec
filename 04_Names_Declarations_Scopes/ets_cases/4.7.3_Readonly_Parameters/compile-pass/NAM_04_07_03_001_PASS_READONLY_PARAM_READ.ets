/**
 * @id NAM_04_07_03_001_PASS_READONLY_PARAM_READ
 * @expect compile-pass
 * @section 4.7.3
 * @design 只读参数可读取
 * @note 正向用例：验证只读数组/元组参数可读取元素
 */
function foo(array: readonly number[], tuple: readonly [number, string]): void {
    let element: number = array[0];
    let tElem: number = tuple[0];
}
