import random as rdm
import pandas as pd

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

# Write DataFrames to CSV
students.to_csv('students.csv', index=False)
projects.to_csv('projects.csv', index=False)
courses.to_csv('courses.csv', index=False)
members.to_csv('members.csv', index=False)
enrollments.to_csv('enrollments.csv', index=False)
print('writes complete')