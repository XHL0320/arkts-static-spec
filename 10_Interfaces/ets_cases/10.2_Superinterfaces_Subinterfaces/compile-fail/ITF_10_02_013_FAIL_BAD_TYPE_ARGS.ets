/**
 * @id ITF_10_02_013_FAIL_BAD_TYPE_ARGS
 * @expect compile-fail
 * @section 10.2
 * @design extends 类型实参不合法
 * @note 反向用例：验证 extends 泛型接口时类型实参数量/约束不匹配编译错误
 *
 * SPEC EXPECTS: §10.2 line 107 — Type arguments of typeReference denote
 *   a parameterized type that is not well-formed → compile-time error
 *
 * COMPILER BEHAVIOR: 待验证
 *
 * GAP ANALYSIS:
 *   相位：Checker 类型参数匹配
 *   链路：Parser (extends clause) → Checker (type arg validation)
 *   根因：待测试确认
 */
interface Container<T> {
    get(): T;
}
interface Bad extends Container<string, number> {}
