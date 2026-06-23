/**
 * @id EXP_07_10_01_001_PASS_STATIC_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.10.1
 * @design 通过类名访问非 readonly 静态字段：ClassName.staticField 语法
 * @note 正向用例：验证静态字段访问时 objectReference 采用 typeReference 形式
 */
class Counter {
    static count: int = 0
    static step: int = 1
}
let c: int = Counter.count
let s: int = Counter.step
