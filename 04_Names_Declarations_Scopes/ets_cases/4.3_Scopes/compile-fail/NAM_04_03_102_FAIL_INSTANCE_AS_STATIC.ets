/**
 * @id NAM_04_03_102_FAIL_INSTANCE_AS_STATIC
 * @expect compile-fail
 * @section 4.3
 * @design 实例成员通过类名访问
 * @note 反向用例：验证实例成员不能通过类名访问
 */
class Cls {
    instanceField: number = 10;
}
let x: number = Cls.instanceField;
