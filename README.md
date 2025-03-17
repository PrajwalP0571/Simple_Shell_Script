# Simple_Shell_Script
# 🚀 Simple Shell Script for EC2 Setup with NGINX  
![GitHub](https://img.shields.io/github/license/PrajwalP0571/Simple_Shell_Script) ![Shell](https://img.shields.io/badge/Shell-Bash-blue) ![AWS](https://img.shields.io/badge/Platform-AWS-orange) ![NGINX](https://img.shields.io/badge/Web%20Server-NGINX-green)  

<p align="center">
    <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="80px">
</p>

---

## 📌 **Project Overview**  
This project demonstrates how to automate the setup and configuration of an EC2 instance on AWS using a shell script. The script installs essential utilities, sets up an NGINX server, and deploys a project from a GitHub repository into the document root of the NGINX server.  

The automation reduces the need for manual configuration, ensures consistency, and speeds up the deployment process. The shell script covers essential cloud infrastructure tasks, making it a valuable DevOps learning exercise.  

---

## 🌟 **Key Features**  
✔️ Automates EC2 instance setup and configuration  
✔️ Installs essential utilities and NGINX  
✔️ Removes the default NGINX welcome page  
✔️ Clones a GitHub repository into the NGINX document root  
✔️ Configures security groups for SSH and HTTP access  

---

## 🏆 **Tech Stack**  
![AWS](https://img.shields.io/badge/AWS-EC2-orange?style=flat&logo=amazonaws)  
![Shell](https://img.shields.io/badge/Script-Bash-blue?style=flat&logo=gnu-bash)  
![NGINX](https://img.shields.io/badge/Web%20Server-NGINX-green?style=flat&logo=nginx)  

---

## 🛠️ **Prerequisites**  
Make sure you have the following before starting the setup:  
- ✅ An AWS account with EC2 permissions  
- ✅ Installed AWS CLI  
- ✅ Git installed on your local machine  
- ✅ Basic understanding of Linux and shell scripting  

---

## 🚀 **Setup Instructions**  

### **Step 1: Create an EC2 Instance**  
1. Open the AWS Management Console.  
2. Create a new EC2 instance with the following configuration:  
   - **Instance Type:** `t2.micro`  
   - **AMI:** Ubuntu (Latest version)  
   - **Security Group Rules:**  
     - `SSH` – Port `22` (for SSH access)  
     - `HTTP` – Port `80` (for Web access)  
3. Launch the instance and note down the **Public IP** address.  

---

### **Step 2: SSH into the EC2 Instance**  
Connect to your EC2 instance using SSH:  

```bash
ssh -i <your-key.pem> ubuntu@<EC2_PUBLIC_IP>
```

### **Step 3: Clone the Repository
Clone the repository in the home directory:
```bash
cd ~
git clone https://github.com/PrajwalP0571/Simple_Shell_Script.git
```

### **Step 4: Create the Shell Script
Navigate to the project folder and create a new shell script file named script.sh:

```bash
vi script.sh
```

### **Step 5: Add the Script Code
Add the following script code to script.sh:

```bash
#!/bin/bash

echo "Updating the system..."
sudo apt update -y

echo "Installing utilities..."
sudo apt -y install zip unzip

echo "Installing NGINX..."
sudo apt -y install nginx

echo "Removing the default welcome page..."
sudo rm -rf /var/www/html/*

echo "Cloning the project into the document root..."
sudo git clone https://github.com/PrajwalP0571/Simple_Shell_Script.git /var/www/html/
#Note - You need to fork my repository, it will not work without fork.

echo "Done! Copy the EC2 IP address and access it from your browser."
```

### **Step 6: Make the Script Executable
Give executable permission to the script:

```bash
chmod u+x script.sh
```

### **Step 7: Execute the Script
Run the script to configure the instance:

```bash
./script.sh
```

### **Step 8: Test the Setup
Copy the Public IP of the EC2 instance and paste it in your browser to check if the NGINX server is running and serving your project:

```bash
http://<EC2_PUBLIC_IP>
```

✅ If successful, your project content should be displayed in the browser.

🎯 Outcome
After running the script, the following will be set up:
✔️ EC2 instance configured with security groups
✔️ Installed NGINX server
✔️ Deployed GitHub repository content to the document root
✔️ Accessible project via public IP

🚨 Troubleshooting
Problem	Solution
❌ NGINX not starting Restart NGINX: sudo systemctl restart nginx
❌ Connection refused to Check if the security group allows inbound traffic on port 80
❌ Permission denied Use chmod +x script.sh to give execute permission

🌍 Best Practices
✅ Use environment variables for sensitive data like keys and passwords
✅ Restrict SSH access to known IP addresses
✅ Automate EC2 instance termination after testing to avoid costs

📸 Screenshots
<details> <summary>📷 Click to expand</summary>

Example of the project output in the browser

</details>
💡 Learnings
Through this project, you will gain hands-on experience with:

Setting up EC2 instances on AWS
Automating infrastructure with shell scripting
Deploying web servers using NGINX
Working with GitHub repositories
👨‍💻 About the Author
Prajwal Pawar – Cloud Engineer & AWS Certified Solutions Architect
🌟 GitHub: PrajwalP0571
📧 Email: prajwal.pawar0571@gmail.com

💪 Contribute
If you'd like to contribute to this project, feel free to fork the repository and raise a pull request!

📄 License
This project is licensed under the MIT License.

🌟 Show Your Support!
If you found this project useful, give it a ⭐ on GitHub!

<p align="center"> <img src="https://media.giphy.com/media/3o7abKhOpu0NwenH3O/giphy.gif" width="100px"> </p>
yaml
Copy code

---

### ✅ **Why This Version Works:**  
✔️ Shields add a professional touch and highlight key details  
✔️ Stickers and GIFs improve visual appeal  
✔️ Best practices and troubleshooting sections provide added value  
✔️ Clear step-by-step instructions with organized headers  

---

This will make your project look polished and professional on GitHub! 😎
