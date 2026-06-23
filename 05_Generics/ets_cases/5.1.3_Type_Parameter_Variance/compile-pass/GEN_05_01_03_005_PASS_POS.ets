/**
 * @id GEN_05_01_03_005_PASS_POS
 * @expect compile-pass
 * @section 5.2
 * @design 不变体任意位置
 * @note 正向用例：验证无变体修饰符可在任何位置
 */
class Z<T> {
    field: T;
    constructor(v: T) { this.field = v; }
    get(): T { return this.field; }
    set(p: T): void { this.field = p; }
}
