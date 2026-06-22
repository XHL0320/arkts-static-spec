/**
 * @id NAM_04_01_008_PASS_QUALIFIED_NAME_INTERFACE_INSTANCE
 * @expect compile-pass
 * @section 4.1
 * @design 限定名访问接口类型变量的实例成员
 * @note 正向用例：验证接口类型变量可通过限定名访问实例成员
 */
interface NamedEntity {
    getName(): string;
}
class NamedEntityImpl implements NamedEntity {
    getName(): string { return "arkts"; }
}
let namedEntity: NamedEntity = new NamedEntityImpl();
let qualifiedInterfaceName: string = namedEntity.getName();
