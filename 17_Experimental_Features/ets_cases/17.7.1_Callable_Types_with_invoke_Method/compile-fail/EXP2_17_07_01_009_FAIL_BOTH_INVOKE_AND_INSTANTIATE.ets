/**
 * @id EXP2_17_07_01_009_FAIL_BOTH_INVOKE_AND_INSTANTIATE
 * @expect compile-fail
 * @section 17.7.1
 * @design 根据 spec，一个类不能同时定义 $_invoke 和 $_instantiate 方法。同时定义两者应产生编译时错误。
 * @note 反向用例：验证同时定义 $_invoke 和 $_instantiate 应产生编译时错误
 */
class BothInvokeAndInstantiate {
    static $_invoke(x: int): int {
        return x
    }

    static $_instantiate(factory: () => BothInvokeAndInstantiate): BothInvokeAndInstantiate {
        return factory()
    }
}
