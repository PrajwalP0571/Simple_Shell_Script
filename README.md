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
