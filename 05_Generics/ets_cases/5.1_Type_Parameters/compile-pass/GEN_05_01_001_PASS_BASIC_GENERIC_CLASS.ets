/**
 * @id GEN_05_01_001_PASS_BASIC_GENERIC_CLASS
 * @expect compile-pass
 * @section 5.1
 * @design 基本泛型类声明
 * @note 正向用例：验证基本泛型类声明通过编译
 */
class MyBox<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
