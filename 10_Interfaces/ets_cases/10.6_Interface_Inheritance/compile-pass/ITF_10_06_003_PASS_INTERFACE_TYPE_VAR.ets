/**
 * @id ITF_10_06_003_PASS_INTERFACE_TYPE_VAR
 * @expect compile-pass
 * @section 10.6
 * @design 接口类型变量
 * @note 正向用例：验证接口类型变量可引用实现类实例
 */
interface Animal {
    speak(): void;
}
class Dog implements Animal {
    speak(): void {}
}
let pet: Animal = new Dog();
