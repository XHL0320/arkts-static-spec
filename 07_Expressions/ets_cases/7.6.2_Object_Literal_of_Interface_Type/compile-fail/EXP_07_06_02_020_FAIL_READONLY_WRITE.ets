/**
 * @id EXP_07_06_02_020_FAIL_READONLY_WRITE
 * @expect compile-fail
 * @section 7.6.2
 * @design 写入 readonly 属性：readonly 属性只读，赋值应编译时错误
 * @note 反向用例：验证 interface readonly 属性不可写入
 */
interface I3 {
    readonly attr: number
}
function test(): void {
    const i3: I3 = {attr: 42}
    i3.attr = 666
}
