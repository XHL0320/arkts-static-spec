/**
 * @id NAM_04_05_009_PASS_TYPE_DECL_INTERFACE
 * @expect compile-pass
 * @section 4.5
 * @design interface declaration 是类型声明
 * @note 正向用例：验证 interface 声明引入可用于变量类型注解的类型名
 */
interface TypeDeclaredInterface {
    getValue(): number;
}
class TypeDeclaredInterfaceImpl implements TypeDeclaredInterface {
    getValue(): number { return 1; }
}
let typeDeclaredInterfaceValue: TypeDeclaredInterface = new TypeDeclaredInterfaceImpl();
