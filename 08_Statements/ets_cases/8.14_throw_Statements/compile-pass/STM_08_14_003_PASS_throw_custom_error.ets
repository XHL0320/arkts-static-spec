/**
 * @id STM_08_14_003_PASS_throw_custom_error
 * @expect compile-pass
 * @section 8.14
 * @design 测试抛出自定义Error子类，验证子类类型可赋值给Error
 * @note 自定义类继承Error，throw表达式类型为Error的子类型，应当编译通过
 */

class CustomAppError extends Error {
    constructor(msg: string) {
        super(msg);
    }
}

function testThrowCustomError(): void {
    throw new CustomAppError("custom error instance");
}
