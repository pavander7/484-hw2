import random as rdm
import pandas as pd
import sqlite3

n = 4

# Create empty DataFrames
students    = pd.DataFrame(columns=['SID', 'Name', 'Major'])
projects    = pd.DataFrame(columns=['PID', 'P_Name'])
courses     = pd.DataFrame(columns=['CID', 'C_Name'])
members     = pd.DataFrame(columns=['PID', 'SID'])
enrollments = pd.DataFrame(columns=['CID', 'SID'])
print('dfs initialized')

# Read data
Names = pd.read_csv("Names.txt", header=None)[0].to_list()
Majors = pd.read_csv("Majors.txt", header=None)[0].to_list()
P_Names = pd.read_csv("P_Names.txt", header=None)[0].to_list()
C_Names = pd.read_csv("C_Names.txt", header=None)[0].to_list()
print('data read')

# Add data to DataFrames
for sid, name in enumerate(Names, 1):  # Use 'enumerate' to generate SID values
    new_row = [sid, name, rdm.choice(Majors)]
    students.loc[len(students)] = new_row
print('students complete')

for pid, proj in enumerate(P_Names, 1):  # Use 'enumerate' to generate PID values
    new_row = [pid, proj]
    projects.loc[len(projects)] = new_row
print('projects complete')

for cid, course in enumerate(C_Names, 1):  # Use 'enumerate' to generate CID values
    new_row = [cid, course]
    courses.loc[len(courses)] = new_row
print('courses complete')

# Add members and enrollments
for sid in students['SID']:
    for i in range(1, (n // 2) + 1):  # Corrected to integer division
        # Add new row for members
        new_row = [rdm.choice(projects['PID']), sid]
        members.loc[len(members)] = new_row
    for i in range(1, n + 1):
        # Add new row for enrollments
        new_row = [rdm.choice(courses['CID']), sid]
        enrollments.loc[len(enrollments)] = new_row
print('members & enrollments complete')

# Open file for SQL*Plus output
with open('insertUniversity.sql', 'w') as sql_file:
    for index, row in students.iterrows():
        # Create an INSERT statement for each row
        sql_statement = f"INSERT INTO students (SID, Name, Major) VALUES ({row['SID']}, '{row['Name']}', '{row['Major']}');\n"
        sql_file.write(sql_statement)

    for index, row in projects.iterrows():
        # Create an INSERT statement for each row
        sql_statement = f"INSERT INTO projects (PID, P_Name) VALUES ({row['PID']}, '{row['P_Name']}');\n"
        sql_file.write(sql_statement)
    
    for index, row in courses.iterrows():
        # Create an INSERT statement for each row
        sql_statement = f"INSERT INTO courses (CID, C_Name) VALUES ({row['CID']}, '{row['C_Name']}');\n"
        sql_file.write(sql_statement)

    for index, row in members.iterrows():
        # Create an INSERT statement for each row
        sql_statement = f"INSERT INTO members (PID, SID) VALUES ({row['PID']}, {row['SID']});\n"
        sql_file.write(sql_statement)

    for index, row in enrollments.iterrows():
        # Create an INSERT statement for each row
        sql_statement = f"INSERT INTO enrollments (CID, SID) VALUES ({row['CID']}, {row['SID']});\n"
        sql_file.write(sql_statement)

print('writes complete')