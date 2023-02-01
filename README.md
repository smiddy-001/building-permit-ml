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

- :open_file_folder: data
- - :memo: data-raw.csv
- - :memo: data.csv
- - :memo: test.csv
- - :memo: train.csv
- :open_file_folder: functions
- - :snake: function-1.py
- - :snake: function-2.py
- - :snake: function-3.py
- - ...
- :computer: launch.sh
- :snake: main.py
- :ringed_planet: jupyter-notebook.ipynb
- :blue_book: README.md

---

## The Funcitons

looking back on the instructions we can divide the things needed into ~10 bite sized chunks. Below is pseudo code for what each function will do.

0. ( {function the following code is used in} ) { description }

---

1. (base) Import pandas package

```
import pandas and other imports, like matlib ect...
```

<br/>

2. (base) Load the dataset (saved as Building_Permits.csv) into a DataFrame

```
import data from 'https://github.com/martinpella/acamica/raw/master/Building_Permits.csv' as data-raw using the shell script.

data = readfile ./data/data-raw.csv
```

<br/>

3. (visualise) Preview the DataFrame to see the names of the columns

```
show the raw datafram and its headers in jupyter notebook and figure out what needs to be kept and what doesn't
```

<br/>

4. (visualise) Check the number of rows in the dataset

```
Check the number of rows in the dataset, if there are too many or too few rows take note as you need to take this into account when cleaning the dataset and making test/train sets
```

<br/>

5. Check the types of each column

```
check the types of each colum, is it a category, bool or floating point integer
take note as this is useful to know when cleaning the dataset
```

<br/>

6. Find out how many missing values each column has

```python
scan through data and replace with either the mean value or remove the row. Depending on how much rows in the data we have
```

<br/>

7. Identify if any columns may be 'Sensitive features' (gender, ethnicity, sexual orientation, disability) and list them in documentation

```
document this somewhere in this README.md, refer back to this when on step 9
```

<br/>

8. Document which features are sensitive, and your reasoning why

```
document this somewhere in this README.md
```

<br/>

9. Drop any sensitive/insignificant features from DataFrame

```python
sensitive-features =        ['gender', 'ethnicity']
non-significant-features =  ['fathers favourite book', 'mothers life ambition']

drop-columns-header.append(non-significant-features)
drop-columns-header.append(sensitive-features)

for feature in drop-columns-header:
    pd.data.drop(feature) # or however you write it.
```
