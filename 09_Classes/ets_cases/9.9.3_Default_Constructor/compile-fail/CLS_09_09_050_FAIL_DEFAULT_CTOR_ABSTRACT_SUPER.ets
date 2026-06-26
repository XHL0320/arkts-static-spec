
/**
 * @id CLS_09_09_050_FAIL_DEFAULT_CTOR_ABSTRACT_SUPER
 * @expect compile-fail
 * @section 9.9.3
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
abstract class A050 { constructor(n: int) {} }
class Bad050 extends A050 {}
