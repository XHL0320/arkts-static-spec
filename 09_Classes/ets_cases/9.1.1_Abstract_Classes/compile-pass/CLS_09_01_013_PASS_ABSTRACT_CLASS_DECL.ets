/**
 * @id CLS_09_01_013_PASS_ABSTRACT_CLASS_DECL
 * @expect compile-pass
 * @section 9.1.1
 * @design abstract 类声明编译通过
 * @note 正向用例：验证 abstract 修饰符的类声明
 */
abstract class AbstractShape {
  abstract area(): double
}

