/**
 * @id GEN_05_01_005_PASS_MULTIPLE_PARAMS
 * @expect compile-pass
 * @section 5.1
 * @design 多类型参数
 * @note 正向用例：验证多个类型参数声明
 */
class Pair<K, V> {
    key: K;
    value: V;
    constructor(k: K, v: V) { this.key = k; this.value = v; }
}
