# Define the exception account
$exception = "KyleI"

# Get the list of administrators
$admins = net localgroup administrators

# Iterate through each member of the administrators group
foreach ($admin in $admins) {
    # Skip lines that are not user accounts
    if ($admin -match "^-+") { continue }
    if ($admin -match "The command completed successfully.") { continue }
    if ($admin -match "Alias name") { continue }
    if ($admin -match "Comment") { continue }
    if ($admin -match "Members") { continue }

    # Trim any whitespace
    $admin = $admin.Trim()

    # Remove the member if it is not the exception
    if ($admin -ne $exception) {
        net localgroup administrators "$admin" /delete
        Write-Output "Removed $admin from Administrators"
    } else {
        Write-Output "Kept $admin in Administrators"
    }
}
