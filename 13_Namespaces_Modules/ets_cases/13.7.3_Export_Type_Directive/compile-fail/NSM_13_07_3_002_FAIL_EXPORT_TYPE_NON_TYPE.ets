/*
 * NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE
 * @id NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE
 * @expect compile-fail
 * @section 13.7.3
 * @design Spec 要求：export type 引用非 type 实体导致 compile-time error
 * @note 反向用例：spec 要求 If a binding refers to something other than type,
 *       then a compile-time error occurs，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：实现不检查 export type 中 binding 的类型
 *       分类：D 类（Spec 与实现不一致）
 */
function foo(): void {}
export type { foo } // Spec: compile-time error: foo is not a type, but ArkTS allows
