/**
 * @id EXP2_17_07_01_011_FAIL_GENERIC_USE_TYPE_PARAM
 * @expect compile-fail
 * @section 17.7.1
 * @design 根据 spec，static $_invoke 不能访问泛型类型参数。在泛型类的 $_invoke 签名或实现中使用类型参数应产生编译时错误。
 * @note 反向用例：验证泛型类 $_invoke 使用类型参数应编译失败
 */
class GenericInvokeFail<T> {
    static $_invoke(value: T): T {
        return value
    }
}
