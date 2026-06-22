/**
 * @id NAM_04_03_019_PASS_NAMESPACE_SCOPE_EMBEDDED
 * @expect compile-pass
 * @section 4.3
 * @design namespace 作用域覆盖嵌套 namespace
 * @note 正向用例：验证 namespace 级变量从声明点到 namespace 结束并覆盖嵌套 namespace
 */
namespace ScopeOuter {
    export let outerValue: number = 1;
    export namespace ScopeInner {
        export let innerValue: number = outerValue + 1;
    }
}
let namespaceScopeValue: number = ScopeOuter.ScopeInner.innerValue;
