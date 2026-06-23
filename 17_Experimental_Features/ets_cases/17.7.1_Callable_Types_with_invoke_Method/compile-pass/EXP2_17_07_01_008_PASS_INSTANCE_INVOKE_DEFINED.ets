/**
 * @id EXP2_17_07_01_008_PASS_INSTANCE_INVOKE_DEFINED
 * @expect compile-pass
 * @section 17.7.1
 * @design 在类中定义实例 $_invoke 方法（非 static）。根据 spec，实例 $_invoke 不会使类成为可调用类型，但定义本身合法。此处仅验证定义可编译通过。
 * @note 正向用例：验证实例 $_invoke 方法的定义本身合法，编译通过
 */
class InstanceInvoke {
    $_invoke(): void {
        console.log("instance invoke")
    }

    $_invoke(x: int): int {
        return x
    }
}

function testInstanceInvoke(): void {
    let obj: InstanceInvoke = new InstanceInvoke()
    obj.$_invoke()
    let result: int = obj.$_invoke(42)
}
