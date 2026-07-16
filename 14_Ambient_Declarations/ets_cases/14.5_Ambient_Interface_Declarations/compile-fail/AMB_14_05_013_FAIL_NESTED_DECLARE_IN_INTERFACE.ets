/**
 * @id AMB_14_05_013_FAIL_NESTED_DECLARE_IN_INTERFACE
 * @expect compile-fail
 * @section 14.5
 * @design INTERFACE
 * @note spec gap: newly added
 */
declare interface I013 { declare foo(): void }
