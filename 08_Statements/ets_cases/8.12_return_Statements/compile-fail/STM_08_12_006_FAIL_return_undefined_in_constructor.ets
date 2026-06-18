/**
 * @id STM_08_12_006_FAIL_return_undefined_in_constructor
 * @expect compile-fail
 * @section 8.12
 * @design 测试构造函数中return undefined产生编译错误
 * @note 反向测试：规范明确规定"constructor(p: number) { return undefined } // compile-time error"，构造函数不允许有返回值的return
 */
class MyClass {
    x: int = 0;
    constructor(p: number) {
        return undefined;
    }
}
