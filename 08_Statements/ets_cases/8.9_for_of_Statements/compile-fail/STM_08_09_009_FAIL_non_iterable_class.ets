/**
 * @id STM_08_09_009_FAIL_non_iterable_class
 * @expect compile-fail
 * @section 8.9
 * @design 对未实现Iterable接口的自定义类实例使用for-of，应产生编译时错误
 * @note 自定义类未实现Iterable接口，不可迭代，编译时报错
 */
class NonIterable {
    value: int = 0;
}

function testNonIterableClass(): void {
    let obj: NonIterable = new NonIterable();
    for (let x of obj) {
        console.log(x.toString());
    }
}
