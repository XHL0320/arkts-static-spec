/**
 * @id NAM_04_03_003_PASS_CLASS_SCOPE_STATIC
 * @expect compile-pass
 * @section 4.3
 * @design 类作用域-静态成员通过类名访问
 * @note 正向用例：验证通过类名访问静态成员
 */
class MyMath {
    static PI: number = 3.14;
}
let p: number = MyMath.PI;
