/**
 * @id GEN_05_01_03_001_PASS_RETURN
 * @expect compile-pass
 * @section 5.1.3
 * @design out 返回值位置
 * @note 正向用例：验证 out 类型参数在返回值位置通过编译
 */
class X<out T> {
    private readonly value: T;
    constructor(v: T) { this.value = v; }
    get(): T { return this.value; }
}
