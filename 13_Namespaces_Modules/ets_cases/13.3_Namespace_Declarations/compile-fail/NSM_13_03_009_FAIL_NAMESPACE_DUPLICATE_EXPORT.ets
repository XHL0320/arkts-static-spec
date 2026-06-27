/*
 * @id NSM_13_03_009_FAIL_NAMESPACE_DUPLICATE_EXPORT
 * @expect compile-fail
 * @section 13.3
 * @design A duplication in merging namespace causes a compile-time error
 */

namespace A {
    export function foo(): void {}
}

namespace A {
    export function foo(): void {} // Compile-time error as foo() was already defined
}
