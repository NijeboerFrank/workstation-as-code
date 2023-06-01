# List all the commands
set -l todo_commands a add addm addto app append archive deduplicate del depri do dp help lf list listaddons listall listcon listfile listpri ls lsa lsc lsp lsprj move mv p prepend pri replace report rm shorthelp

# Basic Commands

## This is cool, but is noticably slower
# function __fish_get_description
#     set -l command_description (todo.sh help $argv)

#     if test (string replace -r '[[:space:]]+\w+ (.*)' '$1' $command_description[1]) = (string replace -r '[[:space:]]+\w+ (.*)' '$1' $command_description[2])
#         echo "$command_description[1] | $command_description[3]"
#     else
#         echo "$command_description[1] | $command_description[2]"
#     end
# end

# for command in $todo_commands; 
#     complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a $command -d (__fish_get_description $command);
# end;

# Basic command completions
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a a -d 'Adds a Task to your todo.txt file.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a add -d 'Adds a Task to your todo.txt file.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a addm -d 'Adds one Task per input line to your todo.txt file.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a addto -d 'Adds a a line of text to any file located in the todo.txt directory.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a app -d 'Adds TEXT TO APPEND to the end of the task on line ITEM#.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a append -d 'Adds TEXT TO APPEND to the end of the task on line ITEM#.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a archive -d 'Moves all done tasks from todo.txt to done.txt abd removes blank lines.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a deduplicate -d 'Removes duplicate lines from todo.txt.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a del -d 'Remove Task. If TERM is given, remove TERM from Task.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a depri -d 'Remove PRIORITY from Task.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a do -d 'Mark Task as DONE.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a help -d 'Display help about usage, options, built-in and add-on actions, or just the usage help for passed ACTION(s).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a lf -d 'Displays all the lines in SRC file located in the todo.txt directory, sorted by priority with line  numbers.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a list -d 'List Tasks containing TERM(s) (or not -TERM(s)).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listaddons -d 'Lists all added and overridden actions in the actions directory.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listall -d 'List all Tasks from todo.txt and done.txt containing TERM (or not -TERM).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listcon -d 'List contexts (start with an @ sign in todo.txt).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listfile -d 'Displays all the lines in SRC file located in the todo.txt directory, sorted by priority with line  numbers.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listpri -d 'Displays all tasks prioritized PRIORITIES.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a listproj -d 'List projects (start with a + sign in todo.txt).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a ls -d 'List Tasks containing TERM(s) (or not -TERM(s)).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a lsa -d 'List all Tasks from todo.txt and done.txt containing TERM (or not -TERM).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a lsc -d 'List contexts (start with an @ sign in todo.txt).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a lsp -d 'Displays all tasks prioritized PRIORITIES.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a lsprj -d 'List projects (start with a + sign in todo.txt).'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a move -d 'Moves a line from source text file (SRC) to destination text file (DEST).' 
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a mv -d 'Moves a line from source text file (SRC) to destination text file (DEST).' 
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a p -d 'Add/Replace PRIORITY on Task. PRIORITY must be a letter from A-Z'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a prep -d 'Adds TEXT TO PREPEND to the beginning of the task on line ITEM#. Quotes optional.' 
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a prepend -d 'Adds TEXT TO PREPEND to the beginning of the task on line ITEM#. Quotes optional.' 
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a pri -d 'Add/Replace PRIORITY on Task. PRIORITY must be a letter from A-Z'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a replace -d 'Replaces task on line ITEM# with UPDATED TODO.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a report -d 'Adds the number of open tasks and done tasks to report.txt.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a rm -d 'Remove Task. If TERM is given, remove TERM from Task.'
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $todo_commands" -a shorthelp -d 'List the on-line usage of all built-in and add-on actions.'

# Basic Options
complete -c todo.sh -f -a -@ -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -@" -d 'Hide context names in list output. Use twice to show context names (default).'
complete -c todo.sh -f -a -+ -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -+" -d 'Hide project names in list output. Use twice to show project names (default).'
complete -c todo.sh -f -a -c -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -c" -d 'Color mode.'
complete -c todo.sh -f -a -d -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -d" -d 'Use a configuration file other than one of the defaults (e.g. ~/.config/todo/config).'
complete -c todo.sh -f -a -f -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -f" -d 'Forces actions without confirmation or interactive input.'
complete -c todo.sh -f -a -h -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -h" -d 'Display a short help message; same as action "shorthelp".'
complete -c todo.sh -f -a -p -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -p" -d 'Plain mode turns off colors.'
complete -c todo.sh -f -a -P -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -P" -d 'Hide priority labels in list output. Use twice to show priority labels (default).'
complete -c todo.sh -f -a -a -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -a" -d 'Do not auto-archive tasks automatically on completion.'
complete -c todo.sh -f -a -A -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -A" -d 'Auto-archive tasks automatically on completion.'
complete -c todo.sh -f -a -n -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -n" -d 'Do not preserve line numbers; automatically remove blank lines on task deletion.'
complete -c todo.sh -f -a -N -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -N" -d 'Preserve line numbers.'
complete -c todo.sh -f -a -t -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -t" -d 'Prepend the current date to a task automatically when it is added.'
complete -c todo.sh -f -a -T -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -T" -d 'Do not prepend the current date to a task automatically when it is added.'
complete -c todo.sh -f -a -v -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -v" -d 'Verbose mode turns on confirmation messages.'
complete -c todo.sh -f -a -vv -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -vv" -d 'Extra verbose mode prints some debugging information and additional help text.'
complete -c todo.sh -f -a -V -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -V" -d 'Displays version, license and credits.'
complete -c todo.sh -f -a -x -n "not __fish_seen_subcommand_from $todo_commands; and not __fish_seen_subcommand_from -x" -d 'Disables TODOTXT_FINAL_FILTER.'

# Matching functions
set -g __todo_txt_task_regex '^(\d+) ?(\(\w\))? ?(\d+-\d+-\d+)? ?(\d+-\d+-\d+)? ?(.*)$'

function __fish_get_items
    set --local items (todo.sh -p ls)
    __format_task (__match_task $items)
end

function __format_task
    string replace -r "$__todo_txt_task_regex" '$1\t$5' $argv
end

function __match_task
    string match -r '^\d+ .*$' $argv
end

# Current word
function __fish_seen_plus_at_cursor
    set --local tokens (commandline --current-process --current-token)
    test (string match -r '\+.*' $tokens)
end

function __fish_seen_context_at_cursor
    set --local tokens (commandline --current-process --current-token)
    test (string match -r '@.*' $tokens)
end

function __fish_get_project
    todo.sh -p listproj
end
function __fish_get_context
    todo.sh -p listcon
end

function __fish_seen_item
    set --local tokens (commandline --current-process --tokenize)
    test (string match -r '\d+' $tokens[-1])
end

# Filename items
set -l commands_with_filenames addto listfile move
complete -c todo.sh -f -n "not __fish_seen_subcommand_from $commands_with_filenames"
complete -c todo.sh -F -n "__fish_seen_subcommand_from move mv; and __fish_seen_item"

# Completing items
set -l commands_with_item app append del depri do done dp o p prep prepend pri replace rm
complete -c todo.sh -f -n "__fish_seen_subcommand_from $commands_with_item" -a '(__fish_get_items)'
complete -c todo.sh -f -n "__fish_seen_subcommand_from move mv; and not __fish_seen_item" -a '(__fish_get_items)'

# Term items
set -l commands_with_term a add addm app append del list listall listcon listproj ls lsa lsc lsprj prep prepend replace rm
complete -c todo.sh -f -n "__fish_seen_subcommand_from $commands_with_term; and __fish_seen_plus_at_cursor" -a '(__fish_get_project)'

# Context items
set -l commands_with_context a add addm app append del list listall listcon listproj ls lsa lsc lsprj prep prepend replace rm
complete -c todo.sh -f -n "__fish_seen_subcommand_from $commands_with_context; and __fish_seen_context_at_cursor" -a '(__fish_get_context)'
