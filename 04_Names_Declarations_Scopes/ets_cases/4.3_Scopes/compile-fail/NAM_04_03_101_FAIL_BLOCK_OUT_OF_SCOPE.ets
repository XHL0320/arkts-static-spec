/**
 * @id NAM_04_03_101_FAIL_BLOCK_OUT_OF_SCOPE
 * @expect compile-fail
 * @section 4.3
 * @design 块外引用块内变量
 * @note 反向用例：验证块外引用块内变量编译错误
 */
function test(): void {
    if (true) {
        let innerVar: number = 42;
    }
    let x: number = innerVar;
}
