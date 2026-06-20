/**
 * @id NAM_04_04_014_FAIL_IF_BLOCK_LEAK
 * @expect compile-fail
 * @section 4.4
 * @design 条件块作用域泄漏
 * @note 反向用例：验证if块内声明的变量在块外不可访问（块作用域隔离）
 */
function check(flag: boolean): void {
    if (flag) {
        let temp: number = 100;
    }
    let result: number = temp;
}
