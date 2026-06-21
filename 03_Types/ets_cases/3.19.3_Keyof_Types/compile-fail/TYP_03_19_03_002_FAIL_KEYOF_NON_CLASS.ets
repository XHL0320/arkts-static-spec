/**
 * @id TYP_03_19_03_002_FAIL_KEYOF_NON_CLASS
 * @expect compile-fail
 * @section 3.19.3
 * @design keyof 应用于非类/接口类型应产生编译时错误
 * @note 反向用例：spec 3.19.3 规定 "A compile-time error occurs if typeReference is
 *       neither a class nor an interface type"，但 ArkTS 实际编译通过
 *       ⚠️ SPEC 不一致：spec 要求 keyof number 报错，实现允许通过
 *       分类：D 类（Spec 与实现不一致）
 */
type WrongKeyof = keyof number