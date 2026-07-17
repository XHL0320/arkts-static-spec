/**
 * @id ANN_18_06_007_FAIL_RUNTIME_FIELD_MUTATION
 * @expect compile-fail
 * @section 18.6
 * @design MUTATION
 * @note spec gap: newly added
 */
@Retention("RUNTIME")
@interface Anno007 { name: string }
class C007 { constructor() {}}
function test(): void { let a: Anno007 = new Anno007(); a.name = "new" }
