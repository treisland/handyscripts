# Recursive Text Search

## Purpose

The purpose of this script is to facilitate the search for a particular text string within files located in a specified directory and its subdirectories. It is particularly useful for developers and system administrators who need to quickly locate occurrences of a string within a large set of files.

## Usage
To use this script, follow the usage instructions below:

```
./recursive_text_search.sh <directory> <search_string>
```

## Parameters:

| param | description |
| --- | --- |
| \<directory> | The directory path where the search should begin. |
| \<search_string> | The text string to search for within the files. |

## Example

To search for the string "exampleText" within files in the /path/to/your/directory directory, use the following command

```
./recursive_text_search.sh /path/to/your/directory "exampleText"
```

## Script Description

Check for Correct Number of Arguments: The script first checks if the correct number of arguments (2) is provided. If not, it displays a usage message and exits.

Assign Arguments to Variables: The directory path and the search string are assigned to variables search_file and search_string, respectively.

Find and Search: The script uses the find command to locate all files within the specified directory and its subdirectories. For each file found, it uses the grep command to search for the specified text string. The -H option with grep prints the filename, and the -n option prints the line number where the match is found.

## Notes

The script uses grep for pattern matching, and the search string can include wildcards.

Ensure the script has execute permissions. You can set the permissions using the following command:

```
chmod +x recursive_text_search.sh
```
