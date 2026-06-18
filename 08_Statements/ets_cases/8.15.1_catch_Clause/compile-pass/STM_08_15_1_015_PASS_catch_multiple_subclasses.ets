/**
 * @id STM_08_15_1_015_PASS_catch_multiple_subclasses
 * @expect compile-pass
 * @section 8.15.1
 * @design 验证 catch 块中使用 instanceof 对三个以上 Error 子类型进行类型收窄，代码能够通过编译。
 * @note 正向测试：通过 instanceof 区分 RangeError、TypeError、SyntaxError 等多个子类型，各分支访问 e.message。
 */
class MySyntaxErr extends Error {}

function testCatchMultipleSubclasses(): void {
    try {
        throw new RangeError("range error");
    } catch (e) {
        if (e instanceof RangeError) {
            let msg: string = e.message;
        } else if (e instanceof TypeError) {
            let msg: string = e.message;
        } else if (e instanceof SyntaxError) {
            let msg: string = e.message;
        } else {
            let msg: string = e.message;
        }
    }
}
