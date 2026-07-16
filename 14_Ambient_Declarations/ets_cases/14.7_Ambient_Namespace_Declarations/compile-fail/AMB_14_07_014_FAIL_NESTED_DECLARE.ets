/**
 * @id AMB_14_07_014_FAIL_NESTED_DECLARE
 * @expect compile-fail
 * @section 14.7
 * @design 在已是 ambient 的 namespace 中嵌套 declare → compile-time error
 * @note spec: 在已是 ambient 的上下文中使用 declare 修饰符 → compile-time error
 */
declare namespace A {
    declare function foo(): void
}
