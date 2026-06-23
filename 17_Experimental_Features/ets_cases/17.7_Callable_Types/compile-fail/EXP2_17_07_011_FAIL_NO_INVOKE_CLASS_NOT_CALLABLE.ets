/**
 * @id EXP2_17_07_011_FAIL_NO_INVOKE_CLASS_NOT_CALLABLE
 * @expect compile-fail
 * @section 17.7
 * @design 没有声明 $_invoke 或 $_instantiate 的普通类不可作为函数调用
 * @note 反向用例：普通类（无 $_invoke/$_instantiate）尝试 C() 调用应编译失败
 */
class PlainClass {
  value: int = 0
}

function testPlainClassNotCallable(): void {
  let r: int = PlainClass()
}
