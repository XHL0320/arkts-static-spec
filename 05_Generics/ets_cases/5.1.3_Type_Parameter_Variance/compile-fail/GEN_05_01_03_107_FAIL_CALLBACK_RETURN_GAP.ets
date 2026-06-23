/**
 * @id GEN_05_01_03_107_FAIL_CALLBACK_RETURN_GAP
 * @expect compile-fail
 * @section 5.1.3
 * @design in 类型参数出现在回调函数返回值位置
 * @note 反向用例：验证 in T 不可出现在回调函数返回值位置（嵌套 out-position）
 */
class Consumer<in T> {
    // T 出现在回调函数返回值位置 = out-position 嵌套
    // 规范要求应报错，编译器当前未检测
    produce(supplier: () => T): void {}
}
