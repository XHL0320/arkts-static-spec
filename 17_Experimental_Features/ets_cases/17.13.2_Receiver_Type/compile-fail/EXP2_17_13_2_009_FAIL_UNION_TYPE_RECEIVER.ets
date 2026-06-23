/**
 * @id EXP2_17_13_2_009_FAIL_UNION_TYPE_RECEIVER
 * @expect compile-fail
 * @section 17.13.2
 * @design 联合类型不能作为接收者类型 — 会产生 ESE0082
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Alpha { id: number = 0 }
class Beta { id: number = 0 }
function showId(this: Alpha | Beta): number { return this.id }
