/**
 * @id CLS_09_06_6_012_FAIL_OVERRIDE_FIELD_NO_INIT
 * @expect compile-fail
 * @section 9.6.6
 * @design 重写字段必须有显式初始化
 * @note spec: override field must be explicitly initialized
 */
class Base012 { f: int = 1 }
class Derived012 extends Base012 { f: int }
