# College Management System

A college website built with ASP.NET Web Forms where students can view the college, its courses and faculty, register, and log in.

**Built with:** ASP.NET Web Forms (C#), ADO.NET, SQL Server LocalDB, HTML, CSS, JavaScript

## Pages
- Home, About, Gallery
- Courses and Faculty (loaded from the database)
- Student registration
- Login (student and user)
- Shared master page for a consistent layout

## How to run (Visual Studio)
1. Open `college management system.sln` in Visual Studio.
2. Visual Studio restores the NuGet packages automatically (internet needed the first time).
3. Create the LocalDB database `college_management` with the tables used by the pages (Students, User, course, faculty).
4. Check the connection string in `Web.config` and in the page code-behind files so it points to your database file.
5. Press **F5** to run.

Developed by Khuman Ritu
