/**
 * @id NAM_04_01_003_PASS_QUALIFIED_NAME_CLASS
 * @expect compile-pass
 * @section 4.1
 * @design 限定名-类静态成员访问
 * @note 正向用例：验证类名.静态成员的限定名访问
 */
class MyClass {
    static value: number = 100;
}
let v: number = MyClass.value;
