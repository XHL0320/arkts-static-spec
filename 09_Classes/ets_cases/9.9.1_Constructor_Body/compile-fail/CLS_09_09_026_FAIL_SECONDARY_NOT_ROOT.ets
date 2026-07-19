
/**
 * @id CLS_09_09_026_FAIL_SECONDARY_NOT_ROOT
 * @expect compile-fail
 * @section 9.9.1
 * @design 次级构造器在非根级调用this
 * @note spec: 'this' call must be a root-level statement in constructor
 */
class Bad25 { constructor() { if (true) { this() } } }
