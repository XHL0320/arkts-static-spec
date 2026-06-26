
/**
 * @id CLS_09_09_024_FAIL_SUPER_ARG_INSTANCE_METHOD
 * @expect compile-fail
 * @section 9.9.2
 * @design Auto-added metadata
 * @note Auto-fixed missing metadata
 */
class B24 { constructor(n: int) {} }
class Bad24 extends B24 { getVal(): int { return 1 } constructor() { super(this.getVal()) } }
