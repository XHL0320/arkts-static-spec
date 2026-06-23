/**
 * @id EXP2_17_07_01_010_FAIL_INSTANCE_INVOKE_NOT_CALLABLE
 * @expect compile-fail
 * @section 17.7.1
 * @design 根据 spec，实例 $_invoke 方法不会使类成为可调用类型。尝试以 ClassName() 调用仅含实例 $_invoke 的类应产生编译时错误。
 * @note 反向用例：验证实例 $_invoke 不会使类可调用，ClassName() 应编译失败
 */
class OnlyInstanceInvoke {
    $_invoke(): void {
        console.log("instance invoke only")
    }
}

function testCallFail(): void {
    OnlyInstanceInvoke()
}
