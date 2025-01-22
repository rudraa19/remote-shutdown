# remote-shutdown

A lightweight script that allows you to remotely shut down your Windows device using a simple API-based method.


## Features
- **Easy Setup**: Simple steps to configure the script on your Windows device.
- **Remote Control**: Shutdown your device from anywhere by updating an API document.
- **Automatic Execution**: The script runs automatically on startup for seamless operation.


## Requirements
- A Windows device.
- An [nPoint.io](https://www.npoint.io/) account for API hosting.


## Setup Instructions

1. **Download the Script**:  
   Download the `main.vbs` file to your Windows device.

2. **Create an API on nPoint.io**:  
   - Go to [nPoint.io](https://www.npoint.io/) and create an account or log in.
   - Create a new document by clicking the **`+ New`** button.
   - Add the following JSON content to the document:
     ```json
     {
         "doShutdown": false
     }
     ```
   - Click on **Share** and copy the API URL (e.g., `https://api.npoint.io/123123abcabc`).

3. **Update the Script**:  
   - Open `main.vbs` using Notepad.
   - Replace `YOUR-NPOINT-API-URL` with your copied API URL.
   - Save the file.

4. **Enable Automatic Startup**:  
   - Copy the updated `main.vbs` file.
   - Press `Win + R` on your keyboard, type `shell:startup`, and press Enter.
   - Paste the `main.vbs` file into the folder that opens.

5. **Testing the Setup**:  
   - To trigger a shutdown, go to your nPoint document and change:
     ```json
     {
         "doShutdown": true
     }
     ```
   - Your device will shut down within one minute.


## Disclaimer
1. **Use Responsibly**:  
   This script provides administrative-level control of your device. Ensure you do not share your API URL with unauthorized users. Misuse may lead to unexpected shutdowns or potential data loss.

2. **No Liability**:  
   The author assumes no responsibility for any harm, damage, or data loss caused by the use or misuse of this script.

3. **Test Thoroughly**:  
   Ensure the script works correctly before deploying it on critical systems. Use it only on devices where you have administrative privileges and control.


## Troubleshooting
- **Script Not Running on Startup**: Ensure the `main.vbs` file is placed in the correct `Startup` folder.
- **Device Not Shutting Down**: Double-check the API URL in the script and ensure the nPoint document is updated correctly.
- **Error Messages**: Open the `main.vbs` file and confirm that no syntax errors exist.

---

Enjoy remote controlling your Windows shutdown! 🚀