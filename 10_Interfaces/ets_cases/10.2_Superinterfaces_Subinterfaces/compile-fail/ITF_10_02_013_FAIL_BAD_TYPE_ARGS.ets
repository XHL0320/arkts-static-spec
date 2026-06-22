/**
 * @id ITF_10_02_013_FAIL_BAD_TYPE_ARGS
 * @expect compile-fail
 * @section 10.2
 * @design extends 类型实参不合法
 * @note 反向用例：验证 extends 泛型接口时类型实参数量/约束不匹配编译错误
 *       规范 §10.2 line 107
 */
interface Container<T> {
    get(): T;
}
interface Bad extends Container<string, number> {}
