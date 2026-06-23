/**
 * @id EXP2_17_07_009_FAIL_INSTANCE_INVOKE_NOT_CALLABLE
 * @expect compile-fail
 * @section 17.7
 * @design 只有 static $_invoke 使类可调用；实例 $_invoke（非 static）不使类变为可调用
 * @note 反向用例：类仅有实例 $_invoke，尝试 C() 调用应编译失败
 */
class InstanceInvokeOnly {
  $_invoke(): int {
    return 1
  }
}

function testInstanceInvokeNotCallable(): void {
  let r: int = InstanceInvokeOnly()
}
