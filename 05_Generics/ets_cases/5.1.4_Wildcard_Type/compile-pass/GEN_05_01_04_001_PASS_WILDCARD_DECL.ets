/**
 * @id GEN_05_01_04_001_PASS_WILDCARD_DECL
 * @expect compile-pass
 * @section 5.1.4
 * @design 通配符类型声明通过编译
 * @note 正向用例：验证通配符在有效位置声明通过编译
 */
class MyContainer<T> {}
let c: MyContainer<Object> = new MyContainer<Object>();
