/**
 * @id SEM_15_02_014_FAIL_SELF_EXTENDS
 * @expect compile-fail
 * @section 15.2.1
 * @design 验证非泛型类无效 extends 拒绝：类不可 extends 自身
 * @note 反向用例：类自继承应编译拒绝
 */
class A extends A { x: int = 0; }
function main(): void {}
