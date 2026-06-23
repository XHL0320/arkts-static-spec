/**
 * @id CLS_09_07_030_PASS_INSTANCE_ACCESS_THIS
 * @expect compile-pass
 * @section 9.7.2
 */
class Acc { val: int = 5; getVal(): int { return this.val } }
