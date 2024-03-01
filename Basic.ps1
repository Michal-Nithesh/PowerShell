# PowerShell script to check the status of a service and start it if it's not running

# Define the service name
$serviceName = 'wuauserv' # Windows Update service

# Get the status of the service
$serviceStatus = Get-Service -Name $serviceName

# Check if the service is not running
if ($serviceStatus.Status -ne 'Running') {
    # Service is not running, so start the service
    Start-Service -Name $serviceName
    Write-Host "$serviceName service has been started."
} else {
    # Service is already running
    Write-Host "$serviceName service is already running."
}
