#!/bin/bash

# cleansrc.sh 
# Reformat C++ code according to a coding style
#
# @author    Jhonjun Dormitorio [JJD]
# @date      2017.05.05
# @updated   2017.05.08
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
  AlignEscapedNewlinesLeft: true, \
  AlignOperands: true, \
  AlignTrailingComments: true, \
  AllowAllParametersOfDeclarationOnNextLine: false, \
  AllowShortBlocksOnASingleLine: false, \
  AllowShortCaseLabelsOnASingleLine: false, \
  AllowShortFunctionsOnASingleLine: Inline, \
  AllowShortIfStatementsOnASingleLine: true, \
  AllowShortLoopsOnASingleLine: true, \
  AlwaysBreakAfterDefinitionReturnType: None, \
  AlwaysBreakAfterReturnType: None, \
  AlwaysBreakBeforeMultilineStrings: true, \
  AlwaysBreakTemplateDeclarations: true, \
  BinPackArguments: true, \
  BinPackParameters: false, \
  BreakBeforeBraces: Custom,
  BraceWrapping: { \
    AfterClass: false, \
    AfterControlStatement: false, \
    AfterEnum: false, \
    AfterFunction: true, \
    AfterNamespace: false, \
    AfterObjCDeclaration: false, \
    AfterStruct: false, \
    AfterUnion: false, \
    BeforeCatch: true, \
    BeforeElse: true, \
    IndentBraces: false \
  }, \
  BreakBeforeBinaryOperators: None, \
  BreakBeforeTernaryOperators: true, \
  BreakConstructorInitializersBeforeComma: false, \
  ColumnLimit: 100, \
  ConstructorInitializerAllOnOneLineOrOnePerLine: true, \
  ConstructorInitializerIndentWidth: 2, \
  ContinuationIndentWidth: 0, \
  Cpp11BracedListStyle: false, \
  DerivePointerAlignment: false, \
  DisableFormat: false, \
  ExperimentalAutoDetectBinPacking: false, \
  ForEachMacros: [ foreach, Q_FOREACH, BOOST_FOREACH ], \
  IndentCaseLabels: true, \
  IndentWidth: 4, \
  IndentWrappedFunctionNames: false, \
  KeepEmptyLinesAtTheStartOfBlocks: false, \
  MaxEmptyLinesToKeep: 2, \
  NamespaceIndentation: None, \
  ObjCBlockIndentWidth: 4, \
  ObjCSpaceAfterProperty: false, \
  ObjCSpaceBeforeProtocolList: false, \
  PenaltyBreakBeforeFirstCallParameter: 1, \
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
  TabWidth: 4, \
  UseTab: Never \
}" "${1}"

