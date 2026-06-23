/**
 * @id GEN_05_01_03_105_FAIL_CALLBACK_VARIANCE_GAP
 * @expect compile-fail
 * @section 5.1.3
 * @design out 类型参数出现在回调函数参数位置
 * @note 反向用例：验证 out T 不可出现在回调函数参数位置（嵌套 in-position）
 */
class Container<out T> {
    constructor(v: T) {}
    // T 出现在回调函数参数位置 = in-position 嵌套
    // 规范要求应报错，编译器当前未检测
    forEach(callback: (item: T) => void): void {}
}
