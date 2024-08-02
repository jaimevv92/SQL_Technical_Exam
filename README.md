# Netforemost SQL Developer Technical Exam

## Overview

This document explains how to evaluate the SQL project by executing specific SQL files associated with three tasks:

1. **Database Schema Design and Optimization**
2. **Query Writing and Optimization**
3. **Stored Procedures and Views**

Follow the instructions below to execute the necessary files for each task.

## Tasks

### 1. Database Schema Design and Optimization

To evaluate the Database Schema Design and Optimization, execute the following SQL files in the given order:

1. **File 1: `1_Create_Script.sql`**
   - **Description:** Initial schema setup and table creation.

2. **File 2: `2_Indexes_Script.sql`**
   - **Description:** Additional table creation and index optimization.

3. **File 3: `3_Insert_Script.sql`**
   - **Description:** Final adjustments and schema optimization.

**Instructions:**

1. Open your SQL client (e.g., MySQL Workbench).
2. Connect to your database.
3. Execute the SQL files in the order listed above. You can run each file using a command like:
   ```bash
   mysql -u username -p database_name < 1_Create_Script.sql
   mysql -u username -p database_name < 2_Indexes_Script.sql
   mysql -u username -p database_name < 3_Insert_Script.sql

### 2. Query Writing, Optimization, and Advanced Analysis

To evaluate the Query Writing, Optimization, and Advanced Analysis, execute the following SQL files in the given order:

1. **File 4: `4_Basic_Query_P1.sql`**
   - **Description:** Write a query to retrieve all responses for a given survey, including survey name, question text, and response text.

2. **File 5: `5_Basic_Query_P2.sql`**
   - **Description:** Optimize the query for performance using indexes and other techniques.

3. **File 6: `6_Advanced_Query_P1.sql`**
   - **Description:** Write a query to calculate the average score for each survey, grouped by survey name.

4. **File 7: `7_Advanced_Query_P2.sql`**
   - **Description:** Write a query to find the top 3 users with the highest average response score across all surveys.

5. **File 8: `8_Advanced_Query_P3.sql`**
   - **Description:** Write a query to determine the distribution of responses for each question in a specific survey.

**Instructions:**

1. Open your SQL client (e.g., MySQL Workbench).
2. Connect to your database.
3. Execute the SQL files in the order listed above. You can run each file using a command like:
   ```bash
   mysql -u username -p database_name < 4_Basic_Query_P1.sql
   mysql -u username -p database_name < 5_Basic_Query_P2.sql
   mysql -u username -p database_name < 6_Advanced_Query_P1.sql
   mysql -u username -p database_name < 7_Advanced_Query_P2.sql
   mysql -u username -p database_name < 8_Advanced_Query_P3.sql

### 3. Stored Procedures and Views

To evaluate the Stored Procedures and Views, execute the following SQL files in the given order:

9. **File 9: `9_Stored_Procedure.sql`**
   - **Description:** Create a stored procedure to score survey results based on a given scoring algorithm.

10. **File 10: `10_Create_View.sql`**
   - **Description:** Create a view procedure to score survey results based on a given scoring algorithm.

**Instructions:**

1. Execute the SQL file in the order listed above. You can run each file using the following commands:
   ```bash
   mysql -u username -p database_name < 9_Stored_Procedure.sql

2. Test the stored procedure. You can run the file using the following example:
   ```bash
   mysql -u username -p -e "USE database_name; CALL CalculateSurveyScore(1);"

3. Execute the SQL files in the order listed above. You can run each file using the following commands:
   ```bash
   mysql -u username -p database_name < 10_Create_View.sql

4. Test the view. You can run the file using the following example:
    ```bash
    mysql -u root -p -e "USE my_database; SELECT * FROM SurveyResponseScores;"

## Notes

- Ensure that you have the necessary permissions to create and modify the database schema, execute queries, and create stored procedures and views.

- Check the output and error messages after running each file to ensure that all operations were successful.

## Contact

For any issues, questions, or feedback, please reach out using the following contact details:

- **Name**: Jaime Vázquez Vargas
- **Email**: [jaime.08bits@gmail.com](mailto:your.email@example.com)
- **LinkedIn**: [Jaime Vázquez Vargas](https://www.linkedin.com/in/yourprofile)

Feel free to open an issue on this repository if you have any questions or suggestions. Your feedback is greatly appreciated!

