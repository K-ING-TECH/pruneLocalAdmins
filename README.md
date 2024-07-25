<h1>pruneLocalAdmin</h1>


<h2>Description</h2>
This PowerShell script is designed to manage the membership of the local Administrators group on a Windows machine. The script performs the following tasks:

Explanation of Key Steps

Exception Account:
        $exception = "KyleI": The username KyleI is set as the exception account, which will not be removed from the Administrators group.

Get Administrators List:
        $admins = net localgroup administrators: Executes the command to get the list of current Administrators group members and stores the output in $admins.

Skip Non-User Lines:
        The script checks if each line matches specific patterns (e.g., headers, footers) and skips those lines to focus on actual user accounts.

Trim and Remove:
        Trims any whitespace from the user account names and checks if each name matches the exception account.
        If a user account does not match the exception, it is removed from the Administrators group, and a message is outputted indicating the removal.
<br />


<h2>Languages and Utilities Used</h2>

- <b>PowerShell</b> 

<h2>Environments Used </h2>

- <b>Windows 11</b>

<h2>Script running, outputting and verification:</h2>
<p align="center">
 <br/>
<img src="https://imgur.com/2Pn46dX.png" height="80%" width="80%" alt="Script running, outputting and verification"/>
<br />
<br />

</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
