# Git Usage Guidelines
## Introduction
This document outlines how to use `git` within this project. This includes commit messages, when to commit, branching and so on.

Over time this document might change, so make sure to keep an eye on it.

## What to include in a single commit?
When commiting, try to avoid commiting multiple types of changes in a single commit (as in a level change and a player character change in one commit). It will just create confusion and make it harder to figure out what was changed, when it was changed and where some issues start from.

Instead, make sure you work on one thing at a time. Don't change the level when you are working on the character, and so on. If you do happen to do it, make sure that made changes do not impact each other. After that, stage and commit them separately.

It can also be useful to utilize the stashing feature of `git`.

## Commit messages
### Structure
Commit messages follow this structure:
```
type(scope): Brief explanation

Detailed explanation (optional).
```


### Brief explanation
This should describe the jist of the commit, as short as possible.

Do avoid finishing this with a period (.), and do capitalize the beginning. Make sure, that there is a space between `type(scope):` and `Brief explanation`. 

Also, please don't use commit messages like `made a few changes`.

### Detailed explanation
This can be added, if the commit needs additional details about what changed, but doesn't have to be present.

Make sure there is 1 empty line between `Detailed explanation` and subject line.


### Scope
Scope should be a short, max. 1-2 words. This should effectively say what was targeted in this commit.

In the future a list of valid scopes might emerge, to keep everything well organized.


### Type
Type describes the general goal of the commit. Here is a list of valid types for this project:
* `feat`: new feature
* `art`: artwork changes (new sprites, particles)
* `visual`: other visual changes (shaders, camera shakes)
* `sound`: soundwork changes (music, sfx, etc.)
* `fix`: a bugfix, fixing mistakes in art, sfx, etc.
* `refactor`: restructures/rewrites without any functional change
* `style`: stylistic changes, like whitespaces, correct order of variables, etc.
* `docs`: general documentation (like changes to this document!)
* `transfer`: a transfer commit, aimed for transferring changes from one computer to the other
    * **NB!** Try to avoid doing these commits, and instead try to push other types of commits for transfers (a.k.a. finish the job on the machine)
* `revert`: a commit revert
* `chore`: misc changes

