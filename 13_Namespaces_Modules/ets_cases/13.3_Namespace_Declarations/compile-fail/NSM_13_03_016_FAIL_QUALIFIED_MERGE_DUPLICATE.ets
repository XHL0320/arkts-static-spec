/**
 * @id NSM_13_03_016_FAIL_QUALIFIED_MERGE_DUPLICATE
 * @expect compile-fail
 * @section 13.3
 * @design 限定名namespace合并时重复声明报错
 * @note spec: namespace A.B合并时重复导出声明 → compile-time error
 */
namespace A.B {
    export function foo(): void {}
}
namespace A.B {
    export function foo(): void {}
}
