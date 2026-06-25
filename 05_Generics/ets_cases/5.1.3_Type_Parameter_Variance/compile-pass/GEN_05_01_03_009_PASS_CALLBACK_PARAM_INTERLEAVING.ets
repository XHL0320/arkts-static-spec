/**
 * @id GEN_05_01_03_009_PASS_CALLBACK_PARAM_INTERLEAVING
 * @expect compile-pass
 * @section 5.1.3
 * @design out T 在回调函数参数位置经 variance interleaving 计算后合法
 * @note 正向用例：callback 为方法参数（in-position），T 为 callback 参数（in-position），in+in=out，符合 out T
 */
class Container<out T> {
    constructor(v: T) {}
    forEach(callback: (item: T) => void): void {}
}
