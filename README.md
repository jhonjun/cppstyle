# cppstyle

Automatically fix C++ code to comply to a standard style.

## Usage
```
cleanup.sh [dir] [-e list of files or dirs to exclude]
```

## Requirement
* clang-format (tested with 3.8)
* Both cleanup.sh and cleansrc.sh must be installed to a path within $PATH.

## Rationale
Is messy code giving you a headache?
Tired of reformatting code manually?

Look no further! Simply run cleanup.sh on the root of your project and it will clean it up for you.

### Would it cause problems with git diff or your favorite version control system?
Follow these steps to avoid diff issues:
1. Do a clean checkout.
2. Run cleanup.sh on that fresh checkout.
3. Build.
4. Commit.

Don't include any other change to the code before committing to ensure that only the code formatting is updated. If you have checked-out code that you have been working on prior to the cleanup, simply run cleansrc.sh file.cpp before you check it in to avoid diff problems.
