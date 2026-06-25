/**
 * @id GEN_05_01_03_010_PASS_CALLBACK_RETURN_INTERLEAVING
 * @expect compile-pass
 * @section 5.1.3
 * @design in T 在回调函数返回值位置经 variance interleaving 计算后合法
 * @note 正向用例：supplier 为方法参数（in-position），T 为返回值（out-position），in+out=in，符合 in T
 */
class Consumer<in T> {
    produce(supplier: () => T): void {}
}
