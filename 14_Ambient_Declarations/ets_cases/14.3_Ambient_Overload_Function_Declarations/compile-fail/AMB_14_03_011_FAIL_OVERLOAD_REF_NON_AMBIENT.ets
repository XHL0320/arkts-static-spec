/**
 * @id AMB_14_03_011_FAIL_OVERLOAD_REF_NON_AMBIENT
 * @expect compile-fail
 * @section 14.3
 * @design declare overload 引用非 ambient 的普通函数，违反 spec
 * @note 反向用例：overload 引用非 declare 函数应产生编译时错误
 *       ⚠️ SPEC 不一致：spec 要求报错，但 ArkTS 实际编译通过
 *       分类：D 类（Spec 与实现不一致）
 */
function realFunc(p: string): void {}

declare function ambientFunc(p: number): void
declare overload foo {realFunc, ambientFunc}
