# Building Permit Documentation And Progress Log

## Instructions

1. Import pandas package
2. Load the dataset (saved as Building_Permits.csv) into a DataFrame
3. Preview the DataFrame to see the names of the columns
4. Check the number of rows in the dataset
5. Check the types of each column
6. Find out how many missing values each column has
7. Identify if any columns may be 'Sensitive features' (gender, ethnicity, sexual orientation, disability) and list them below
8. Document which features are sensitive, and your reasoning why
9. Drop any sensitive features from a DataFrame
10. Drop any columns that are not useful / significant, and document your reason why

(Optional) How would you populate the columns with missing value. Document it down or alternatively show it in code on how you'll fill in the missing values.

---

## Project Structure & plan

<!-- - :open_file_folder: functions
- - :snake: function-1.py
- - :snake: function-2.py
- - :snake: function-3.py
- - ... -->

- :open_file_folder: data
- - :memo: data-raw.csv
- - :memo: data.csv
- - :memo: test.csv
- - :memo: train.csv
- :computer: launch.sh
- :snake: main.py
- :ringed_planet: jupyter-notebook.ipynb
- :blue_book: README.md

---

## The Funcitons

looking back on the instructions we can divide the things needed into ~9 bite sized chunks. Below is pseudo code for what each function will do.

{number} ( {file the following code is used in} ) { description }

---

1. Import pandas package

   > :ringed_planet: jupyter-notebook.ipynb
   >
   > ```py
   > import pandas and other imports, like matlib ect...
   > ```

2. Load the dataset (saved as Building_Permits.csv) into a DataFrame

   > :computer: launch.sh
   >
   > ```sh
   > #!/bin/bash
   >
   > cd ./data
   > {
   > wget -c 'https://github.com/martinpella/acamica/raw/master/Building_Permits.csv' -O data-raw.csv
   > echo 'data download succesfull'
   > } ||
   > {
   >     echo 'data download failed, try again with better wifi connection or check that "https://github.com/martinpella/acamica/raw/master/Building_Permits.csv" is still up and running'
   > }
   > ```

   > :ringed_planet: jupyter-notebook.ipynb
   >
   > ```python
   > raw-df = pd.read_csv('./data/data-raw.csv')
   > ```

---

3. Preview the DataFrame to see the names of the columns

   > :ringed_planet: jupyter-notebook.ipynb
   >
   > ```
   > show the raw datafram and its headers in jupyter notebook and figure out what needs to be kept and what doesn't
   > ```

---

4. Check the number of rows in the dataset

   > :ringed_planet: jupyter-notebook.ipynb
   >
   > ```
   > Check the number of rows in the dataset, if there are too many or too few rows take note as you need to take this into account when cleaning the dataset and making test/train sets
   > ```

---

5. Check the types of each column

   > :ringed_planet: jupyter-notebook.ipynb
   >
   > ```
   > check the types of each colum, is it a category, bool or floating point integer
   > take note as this is useful to know when cleaning the dataset
   > ```

---

6. Find out how many missing values each column has

   > ```
   > scan through data rows and print the row id where a null value is found
   > ```

---

7. Identify if any columns may be 'Sensitive features' (gender, ethnicity, sexual orientation, disability) and list them in documentation

   > ```
   > document this somewhere in this README.md, refer back on step 9
   > ```

---

8. Document which features are sensitive, and your reasoning why

   > ```
   > document this somewhere in this README.md
   > ```

---

9. Drop any sensitive/insignificant features from DataFrame

   > ```python
   > sensitive-features =        ['gender', 'ethnicity']
   > non-significant-features =  ['fathers favourite book', 'mothers life ambition']
   >
   > drop-columns-header.append(non-significant-features)
   > drop-columns-header.append(sensitive-features)
   >
   > for feature in drop-columns-header:
   >    pd.data.drop(feature) # or however you write it in pandas.
   > ```

---

## Actually doing it

looking back on the instructions we can divide the things needed into ~9 bite sized chunks. Below is pseudo code for what each function will do.

{number} ( {file the following code is used in} ) { description }

---
