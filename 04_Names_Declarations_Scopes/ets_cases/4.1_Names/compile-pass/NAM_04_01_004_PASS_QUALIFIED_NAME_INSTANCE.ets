/**
 * @id NAM_04_01_004_PASS_QUALIFIED_NAME_INSTANCE
 * @expect compile-pass
 * @section 4.1
 * @design 限定名-实例成员访问
 * @note 正向用例：验证实例.实例成员的限定名访问
 */
class InstanceClass {
    field: number = 10;
}
let obj: InstanceClass = new InstanceClass();
let f: number = obj.field;
