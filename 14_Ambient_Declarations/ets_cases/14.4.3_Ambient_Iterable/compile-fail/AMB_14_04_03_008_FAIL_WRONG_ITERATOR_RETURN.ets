/**
 * @id AMB_14_04_03_008_FAIL_WRONG_ITERATOR_RETURN
 * @expect compile-fail
 * @section 14.4.3
 * @design RETURN
 * @note spec gap: newly added
 */
declare class C008 { [Symbol.iterator](): int }
