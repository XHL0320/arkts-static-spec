/**
 * @id CLS_09_10_026_PASS_PROTECTED_ACCESS_SUBCLASS
 * @expect compile-pass
 * @section 9.10
 * @design 子类可通过 this 引用访问父类的 protected 成员
 * @note 正向用例：D26 子类通过 this.val 读取父类 protected 字段，编译通过
 */
class B26 { protected val: int = 10 }
class D26 extends B26 { getVal(): int { return this.val } }
