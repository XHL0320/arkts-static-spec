/**
 * @id GEN_05_02_02_005_PASS_PARTIAL_INST_GENERIC
 * @expect compile-pass
 * @section 5.3
 * @design 部分实例化产生新泛型
 * @note 正向用例：验证部分实例化产生新泛型实体
 */
class X<T1, T2> {}
class Y<T> extends X<number, T> {
    f1: X<Object, T>;
    f2: X<T, string>;
    constructor() { super(); this.f1 = new X<Object, T>(); this.f2 = new X<T, string>(); }
}
