# 13.4.1 Bind_All_with_Qualified_Access -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C8 | import all as | NSM_13_04_1_001_PASS_IMPORT_ALL_AS | compile-pass | F0014 | unresolved |
| C9 | import all qualified access | NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS | compile-pass | F0014 | unresolved |
| C10 | import all runtime | NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS | runtime | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
