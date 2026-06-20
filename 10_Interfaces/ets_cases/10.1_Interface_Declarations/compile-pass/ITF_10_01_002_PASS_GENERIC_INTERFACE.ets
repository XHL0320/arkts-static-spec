/**
 * @id ITF_10_01_002_PASS_GENERIC_INTERFACE
 * @expect compile-pass
 * @section 10.1
 * @design 泛型接口声明
 * @note 正向用例：验证泛型接口声明通过编译
 */
interface Container<T> {
    get(): T;
    set(v: T): void;
}
