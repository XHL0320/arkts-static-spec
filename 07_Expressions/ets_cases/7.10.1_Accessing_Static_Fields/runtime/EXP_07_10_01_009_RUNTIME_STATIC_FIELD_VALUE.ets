/**
 * @id EXP_07_10_01_009_RUNTIME_STATIC_FIELD_VALUE
 * @expect runtime
 * @section 7.10.1
 * @design 运行时验证静态字段值：不同实例共享同一静态字段，值一致
 * @note 运行时用例：验证静态字段不依赖实例，跨实例共享同一份存储
 */
class Counter {
    static count: int = 42
}
function main(): void {
    let a: Counter = new Counter()
    let b: Counter = new Counter()
    if (Counter.count != 42) {
        throw new Error("assertion failed: static field default value")
    }
    console.log("verified")
}
