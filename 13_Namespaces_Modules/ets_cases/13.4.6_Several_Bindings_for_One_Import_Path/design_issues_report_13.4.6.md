# 13.4.6 Several_Bindings_for_One_Import_Path -- Cross-language behavior difference report

## 2026-07-17 Compilation verification

| ID | Issue | Case | @expect | Actual | Status |
|----|-------|------|---------|--------|--------|
| C19 | several bindings | NSM_13_04_6_001_PASS_SEVERAL_BINDINGS_ONE_IMPORT | compile-pass | F0014 | unresolved |

Root cause: es2panda single-file compilation cannot resolve external module paths (F0014). Requires build system support.
