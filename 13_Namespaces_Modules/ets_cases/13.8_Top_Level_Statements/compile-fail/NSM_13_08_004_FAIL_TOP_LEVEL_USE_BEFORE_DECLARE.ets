/*
 * NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE
 * @id NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE
 * @expect compile-fail
 * @section 13.8
 * @design Spec 要求：变量使用在声明前导致 compile-time error
 * @note 反向用例：spec 要求报错，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求 if a top-level statement refers to a variable
 *       and the declaration is textually located after the statement,
 *       then a compile-time error occurs，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
console.log(a, b) // Spec: compile-time error, but ArkTS implementation allows
let a: int = 1
const b: int = a
