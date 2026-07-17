/**
 * @id STM_08_12_029_FAIL_RETURN_IN_NAMESPACE
 * @expect compile-fail
 * @section 8.12
 * @design namespaceÄÚreturnÓï¾äÓ¦±¨´í
 * @note spec: return at top-level or inside namespace ¡ú compile-time error
 */
namespace NS029 {
    return
}
