/**
 * @id EXP_07_10_02_005_PASS_METHOD_RETURN_FIELD
 * @expect compile-pass
 * @section 7.10.2
 * @design 通过方法返回值访问字段：getObj().field 链式访问
 * @note 正向用例：验证 primaryExpression 可以是方法调用表达式
 */
class Wrapper {
    value: int = 99
}
function create(): Wrapper {
    return new Wrapper()
}
let v: int = create().value
