/**
 * @id NAM_04_04_105_FAIL_LOOP_VAR_LEAK
 * @expect compile-fail
 * @section 4.4
 * @design 循环块作用域泄漏
 * @note 反向用例：验证for循环块内声明的变量在循环外不可访问（循环体作用域隔离）
 */
function sum(n: number): void {
    for (let i: number = 0; i < n; i++) {
        let temp: number = i * 2;
    }
    let leaked: number = temp;
}
