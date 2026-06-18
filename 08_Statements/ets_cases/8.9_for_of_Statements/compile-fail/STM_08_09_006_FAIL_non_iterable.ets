/**
 * @id STM_08_09_006_FAIL_non_iterable
 * @expect compile-fail
 * @section 8.9
 * @design 对非可迭代类型int字面量使用for-of，应产生编译时错误
 * @note int类型不可迭代，编译时报错：expression类型不是iterable type
 */
function testNonIterableType(): void {
    let val: int = 42;
    for (let x of val) {
        console.log(x.toString());
    }
}
