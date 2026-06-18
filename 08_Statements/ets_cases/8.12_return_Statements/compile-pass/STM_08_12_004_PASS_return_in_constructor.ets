/**
 * @id STM_08_12_004_PASS_return_in_constructor
 * @expect compile-pass
 * @section 8.12
 * @design 测试构造函数中无表达式的return语句
 * @note 正向测试：规范规定构造函数允许使用无表达式的return语句，编译通过
 */
class MyClass {
    x: int = 0;
    constructor() {
        return;
    }
}

function testConstructorReturn(): void {
    let obj: MyClass = new MyClass();
}
