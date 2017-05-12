#!/bin/bash

# cleansrc.sh 
# Reformat C++ code according to a coding style
#
# @author    Jhonjun Dormitorio [JJD]
# @date      2017.05.05
# @updated   2017.05.12
# @requires  clang-format
#
# @usage     cleansrc.sh cfile
#

file "${1}" | grep -e " C.* source.* text" &&
clang-format -i -style="{ \
  Language: Cpp, \
  AccessModifierOffset: -4, \
  AlignAfterOpenBracket: Align, \
  AlignConsecutiveAssignments: false, \
  AlignConsecutiveDeclarations: false, \
  AlignEscapedNewlinesLeft: false, \
  AlignOperands: true, \
  AlignTrailingComments: true, \
  AllowAllParametersOfDeclarationOnNextLine: true, \
  AllowShortBlocksOnASingleLine: false, \
  AllowShortCaseLabelsOnASingleLine: false, \
  AllowShortFunctionsOnASingleLine: Inline, \
  AllowShortIfStatementsOnASingleLine: false, \
  AllowShortLoopsOnASingleLine: false, \
  AlwaysBreakAfterDefinitionReturnType: None, \
  AlwaysBreakAfterReturnType: None, \
  AlwaysBreakBeforeMultilineStrings: false, \
  AlwaysBreakTemplateDeclarations: true, \
  BinPackArguments: true, \
  BinPackParameters: true, \
  BreakBeforeBraces: Custom, \
  BraceWrapping: { \
    AfterClass: true, \
    AfterControlStatement: true, \
    AfterEnum: true, \
    AfterFunction: true, \
    AfterNamespace: true, \
    AfterObjCDeclaration: true, \
    AfterStruct: true, \
    AfterUnion: true, \
    BeforeCatch: true, \
    BeforeElse: true, \
    IndentBraces: false \
  }, \
  BreakBeforeBinaryOperators: None, \
  BreakBeforeTernaryOperators: true, \
  BreakConstructorInitializersBeforeComma: false, \
  ColumnLimit: 80, \
  CommentPragmas: '^ IWYU pragma:', \
  ConstructorInitializerAllOnOneLineOrOnePerLine: false, \
  ConstructorInitializerIndentWidth: 4, \
  ContinuationIndentWidth: 4, \
  Cpp11BracedListStyle: false, \
  DerivePointerAlignment: false, \
  DisableFormat: false, \
  ExperimentalAutoDetectBinPacking: false, \
  ForEachMacros: [ foreach, Q_FOREACH, BOOST_FOREACH ], \
  IndentCaseLabels: true, \
  IndentWidth: 4, \
  IndentWrappedFunctionNames: false, \
  KeepEmptyLinesAtTheStartOfBlocks: true, \
  MaxEmptyLinesToKeep: 2, \
  NamespaceIndentation: None, \
  ObjCBlockIndentWidth: 4, \
  ObjCSpaceAfterProperty: true, \
  ObjCSpaceBeforeProtocolList: true, \
  PenaltyBreakBeforeFirstCallParameter: 19, \
  PenaltyBreakComment: 300, \
  PenaltyBreakFirstLessLess: 120, \
  PenaltyBreakString: 1000, \
  PenaltyExcessCharacter: 1000000, \
  PenaltyReturnTypeOnItsOwnLine: 200, \
  PointerAlignment: Left, \
  ReflowComments: true, \
  SortIncludes: false, \
  SpaceAfterCStyleCast: false, \
  SpaceBeforeAssignmentOperators: true, \
  SpaceBeforeParens: ControlStatements, \
  SpaceInEmptyParentheses: false, \
  SpacesBeforeTrailingComments: 2, \
  SpacesInAngles: false, \
  SpacesInContainerLiterals: true, \
  SpacesInCStyleCastParentheses: false, \
  SpacesInParentheses: false, \
  SpacesInSquareBrackets: false, \
  Standard: Cpp11, \
  TabWidth: 8, \
  UseTab: Never \
}" "${1}"

