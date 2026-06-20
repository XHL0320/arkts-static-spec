/**
 * @id ITF_10_06_004_PASS_CLASS_EXTENDS_IMPLEMENTS
 * @expect compile-pass
 * @section 10.6
 * @design 类继承+实现
 * @note 正向用例：验证类同时继承和实现接口
 */
interface Flyable {
    fly(): void;
}
class Bird {
    walk(): void {}
}
class Eagle extends Bird implements Flyable {
    fly(): void {}
}
