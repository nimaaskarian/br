A pretty simple bash script for building a second `br`ain.

# ideas

## PARAD
PARA is a way of organizing your thoughts and goals, presented in Building A
Second Brain book by Tiago Forte.

it has four categories, Projects, Areas, Resources and Archives.
if you wanna learn more about PARA, read the book. its awesome.

`br` fully supports a customized version of this, that i call "PARAD". in addition to PARA, it has a Diary category as well, for daily journaling.

you can use `br init` to initialize a PARAD structure inside your br vault; but br doesn't enforce any kind of structure or way of categorizing. PARAD init only exists because i like it.

## tags
you also may need tags, tags are handled via symlinks. `br init` also creates a
`.tags` directory inside your br vault.


## naming
there are two types of entries in term of their naming. named or dated.

- named entry is an entry that you have used `-n <name>` argument to specify the
name with. usually for notes that you know what they are; tho if this `<name>`
is an already existing directory, it opens an dated entry in it.
- dated is an unnamed entry, usually diaries or not-yet-named scribbles and
notes. `br` uses the `$BR_DATE` as a command to retrieve the date. learn more
about this variable in [config](#config) section.

## encryption
entries can be either encrypted, or plain. encryption/decryption is used by tmp
files, as other (and more secure) ways usually end up with a buggy, inconvenient
experience. you can change the encryption and decryption cmds using variables.
learn more in [config](#config) section.

## config

you can use the variables below to config br.

```bash
# is encrypted by default (0 or 1)
BR_ENCRYPTED=${BR_ENCRYPTED:-0}
# path to br vault
BR_VAULT=${BR_VAULT:-"$HOME/Documents/br-vault"}
# command to retrieve date
BR_DATE=${BR_DATE:-"date +%F"}
# command to encrypt encrypted entries
BR_ENCRYPT=${BR_ENCRYPT:-"gpg --symmetric --output %o %i"}
# command to decrypt encrypted entries
BR_DECRYPT=${BR_DECRYPT:-"gpg -d %o > %i"}
# command to remove tmp files of encrypted entries. `shred -u` is more secure.
BR_REMOVER=${BR_REMOVER:-"rm"}
# suffix of encrypted files, if the file being opened is matched on this,
# BR_ENCRYPTED is assumed to be 1
BR_ENCRYPTED_SUFFIX=${BR_ENCRYPTED_SUFFIX:-".gpg"}
# suffix to add to dated files, and to named files if they don't already match
# it.
BR_SUFFIX=${BR_SUFFIX:-".md"}
# EDITOR is vim or its derivatives with similar arguments (1) or not (0)
BR_VIM=${BR_VIM:-1}
# array of arguments passed to the editor. BR_VIM=1 variable may add arguments to
# this in certain situations
BR_EDITOR_ARGS=()
```

# installation
you can use `make install` to install `br`, `brmenu` and `br.fish`.

## dependencies
- most of the commands depend on `fd`
- search and rg commands depend on `fzf`.
- rg command depends on `rg` and `cat`.
