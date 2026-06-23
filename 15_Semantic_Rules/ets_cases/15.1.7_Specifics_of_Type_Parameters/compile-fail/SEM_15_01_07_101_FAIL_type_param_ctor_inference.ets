/**
 * @id SEM_15_01_07_101_FAIL_type_param_ctor_inference
 * @expect compile-fail
 * @section 15.1.7
 * @design 规范示例：类型参数作为构造函数参数目标类型时按独立表达式推断
 * @note 反向用例：new C(1) 中 1 推断为 int，int 不是 number 的子类型，编译错误
 */
class C<T extends number> {
    constructor(x: T) {}
}
function main(): void {
    let c = new C(1);
}
