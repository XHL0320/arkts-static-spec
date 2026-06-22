/**
 * @id NAM_04_05_028_FAIL_TYPE_DECL_CONST_ENUM_UNSUPPORTED
 * @expect compile-fail
 * @section 4.5
 * @design const enum declaration 当前实现不支持
 * @note 反向用例：验证当前实现拒绝 const enum 类型声明
 */
const enum TypeDeclaredConstEnum { One, Two }
let typeDeclaredConstEnumValue: TypeDeclaredConstEnum = TypeDeclaredConstEnum.One;
