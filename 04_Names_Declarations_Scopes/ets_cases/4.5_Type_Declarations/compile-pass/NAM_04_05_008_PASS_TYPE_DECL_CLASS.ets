/**
 * @id NAM_04_05_008_PASS_TYPE_DECL_CLASS
 * @expect compile-pass
 * @section 4.5
 * @design class declaration 是类型声明
 * @note 正向用例：验证 class 声明引入可用于变量类型注解的类型名
 */
class TypeDeclaredClass {
    value: number = 1;
}
let typeDeclaredClassValue: TypeDeclaredClass = new TypeDeclaredClass();
