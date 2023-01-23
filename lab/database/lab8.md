# Lab 8: Data binding- Using calender control to filter data
Create an ASP.NET Web Application that implements a Calendar control that is used to filter dates for records that are fed in a GridView for display.... A Band Journal Search Page (ArtistJournal)

We add a calendar control to the Web Form which will be used to select dates which will be placed into textboxes
- Use a single calendar control for the Start Date and the End Date...C# code checks for textbox contents and places the chosen date in the appropriate Start or End date textbox
  - The textbox entries are then used to filter records into a GridView
- Note the use of two WHERE clauses
- JournalDate >= TxtStart and JournalDate <=TxtEnd


<p align="center">
<img src="https://github.com/drshahizan/learn-aspnet/blob/main/lab/database/images/LabDb8.png"  height="350" />
</p>

[Source code: 💾](https://drive.google.com/file/d/1mmMpd013dEVU_SVqCL4l_BwjfIWkj6Vq/view?usp=share_link)
