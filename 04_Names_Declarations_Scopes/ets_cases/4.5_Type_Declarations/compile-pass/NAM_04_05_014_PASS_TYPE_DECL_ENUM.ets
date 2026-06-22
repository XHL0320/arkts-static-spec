/**
 * @id NAM_04_05_014_PASS_TYPE_DECL_ENUM
 * @expect compile-pass
 * @section 4.5
 * @design enum declaration 是类型声明
 * @note 正向用例：验证 enum 声明引入可用于变量类型注解的类型名
 */
enum TypeDeclaredEnum { One, Two }
let typeDeclaredEnumValue: TypeDeclaredEnum = TypeDeclaredEnum.One;
