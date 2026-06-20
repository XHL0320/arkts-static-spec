/**
 * @id NAM_04_03_002_PASS_CLASS_SCOPE_THIS
 * @expect compile-pass
 * @section 4.3
 * @design 类作用域-this访问
 * @note 正向用例：验证通过this访问实例成员
 */
class MyClass {
    field: number = 5;
    getField(): number {
        return this.field;
    }
}
