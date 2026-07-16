/**
 * @id AMB_14_07_015_PASS_EXPORT_VALID_MEMBER
 * @expect compile-pass
 * @section 14.7
 * @design MEMBER
 * @note spec gap: newly added
 */
declare namespace A015 { function foo(): void; export {foo} }
