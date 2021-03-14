# Data Modeling
 Data modeling accomplished by using free tool at https://app.quickdatabasediagrams.com/#/d/WeSRNv
 The diagram is QuickDBD-sql-challenge-db-diagram.png.
 The generated SQL is QuickDBD-Free Diagram-SQL-Challenge.sql
 
# Data Engineering
The PGAdmin tool was used to generated the database in postgres.  I spent a lot of time playing with and tweaking the database script, hence the flurry of 'drop tables' at the bottom.  Not to worry though, Dom, I  made sure no one else was trying to use the database at the time. :smiley:

 Also, I had completely forgotten about the export/import capability in PGAdmin (because I seem to like to take the hardest path some days). In order to create the SQL script to insert the data into each of the tables, I created a Jupyter notebook load_data.ipynb. I created the script for each of the six tables which actually worked. But it was a lot of work.  
 I asked in office hours if I was on the right path (I was pretty sure I wasn't) and TA Farshad and Instructor Dom directed me to the PGAdmin export/import miracle.  Hence the apparent duplication of functionality. 

# Data Analysis
The SQL questions were pretty straightforward except for a couple.
The second question made me realize (or rather, remember) that I had pulled in the hire_date and the birth_date as varchar.  After getting over some initial PTSD over wrangling Date objects, I googled what I needed to do to change those columns into a usable datatype of Date.  
The last question of getting the frequency count of employee last name was also a bit challenging and the resulting code ended up being fairly simple.
There are additional queries below which were used to play with the data to help figure out the Bonus part.

# Bonus
This was a great review of many of the concepts we have studied including matplotlib, histograms, as well as a bit of sqlalchemy.  
I used config.py and .gitignore to successfully connect to my database as per instruction.
I didn't have primary keys on my table needed for reflection so I used the Inspector, which worked pretty well.
I still have some questions on the histogram, but I may bring those up in office hours.
The joke is on the new employee, April Foolhardy.  She is earning the minimum salary!