# Prolog Family Tree

This project implements a family tree using Prolog. It defines relationships such as parent, sibling, spouse, and more, allowing queries about family connections.

## Files

- **`family_tree.pl`**: Contains the Prolog code defining family members and relationships.
- **`README.md`**: Documentation for the project.

## Features

The family tree includes the following relationships:

- **Basic Facts**:
  - `male/1`: Defines male family members.
  - `female/1`: Defines female family members.
  - `parent/2`: Defines parent-child relationships.
  - `married/2`: Defines married couples.

- **Derived Relationships**:
  - `spouse/2`: Determines if two individuals are spouses.
  - `mother/2`: Determines if an individual is a mother.
  - `father/2`: Determines if an individual is a father.
  - `sibling/2`: Determines if two individuals are siblings.
  - `brother/2`: Determines if an individual is a brother.
  - `sister/2`: Determines if an individual is a sister.
  - `half_sibling/2`: Determines if two individuals are half-siblings.
  - `uncle/2`: Determines if an individual is an uncle.
  - `aunt/2`: Determines if an individual is an aunt.
  - `grandparent/2`: Determines if an individual is a grandparent.
  - `grandmother/2`: Determines if an individual is a grandmother.
  - `grandfather/2`: Determines if an individual is a grandfather.
  - `nephew/2`: Determines if an individual is a nephew.
  - `niece/2`: Determines if an individual is a niece.
  - `cousin/2`: Determines if two individuals are cousins.
  - `in_law/2`: Determines if two individuals are in-laws.
  - `brother_in_law/2`: Determines if an individual is a brother-in-law.
  - `sister_in_law/2`: Determines if an individual is a sister-in-law.

## Usage

1. Install a Prolog interpreter such as [SWI-Prolog](https://www.swi-prolog.org/).
2. Load the `family_tree.pl` file in the Prolog interpreter:
   ```prolog
   ?- [family_tree].
3. Query relationships. For example:
    ```prolog
   ?- mother(X, greg).