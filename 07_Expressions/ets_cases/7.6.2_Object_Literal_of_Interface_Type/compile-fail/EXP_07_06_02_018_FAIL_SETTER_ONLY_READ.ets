/**
 * @id EXP_07_06_02_018_FAIL_SETTER_ONLY_READ
 * @expect compile-fail
 * @section 7.6.2
 * @design 读取 setter-only 属性：setter-only 属性无 getter，读取应编译时错误
 * @note 反向用例：验证 setter-only 属性不可读取
 */
interface I1 {
    set attr(attr: number)
}
function test(): void {
    const i1: I1 = {attr: 42}
    let x = i1.attr
}
