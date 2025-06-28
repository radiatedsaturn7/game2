# Game Development Workspace

This repository contains configuration for launching an AWS WorkSpace preconfigured for Roblox Studio and Unity using GitHub Actions. The action allows you to spin up a cloud desktop you can connect to from a Chromebook and develop using Visual Studio Code.

## Launching the WorkSpace

Use the **Launch AWS WorkSpace** workflow from the Actions tab to start your desktop. The WorkSpace is configured to stop automatically after five hours so it does not run indefinitely.

[Run the workflow](../../actions/workflows/aws-workspace.yml)

AWS credentials and the WorkSpace ID must be provided as repository secrets:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_REGION` (default `us-east-1` if omitted)
- `AWS_WORKSPACE_ID` – the ID of the WorkSpace to start

Set these secrets in your repository under **Settings → Secrets and variables → Actions**. You can open the page directly for this repo [here](../../settings/secrets/actions).

When running the workflow you'll be prompted for your WorkSpace username and a password to set. The workflow resets the password for that user and then prints the registration code so you can connect.

## Initial setup

The `scripts/setup_workspace.ps1` script can be executed on a new Windows WorkSpace to install Visual Studio Code, Unity Hub, and Roblox Studio. After running the script you can sign in to the editors with your own accounts.

```powershell
powershell -ExecutionPolicy Bypass -File scripts/setup_workspace.ps1
```

Once the WorkSpace is running you can connect with the [AWS WorkSpaces client](https://clients.amazonworkspaces.com/) from Chrome OS.
The workflow prints the registration code after starting the WorkSpace so you can sign in.
Use that code along with the username and password you supplied to the workflow when prompted by the client.

