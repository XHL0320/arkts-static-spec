# 13.4.4 Import_Type_Directive -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C15 | import type | NSM_13_04_4_001_PASS_IMPORT_TYPE | compile-pass | F0014 | unresolved |
| C16 | import type mixed | NSM_13_04_4_002_PASS_IMPORT_TYPE_MIXED | compile-pass | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
