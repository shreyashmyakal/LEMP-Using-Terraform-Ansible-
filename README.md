---

## 🚀 EC2 Provisioning and LEMP Stack Automation with Terraform + Ansible

### 📌 **Project Goal:**

Provision an EC2 instance using **Terraform**, copy the private IP to an **Ansible inventory file**, and use **Ansible** to install the **LEMP stack (Linux, Nginx, MySQL, PHP)** and copy the **index.html** on it.
Also  to remote host

---

### 📁 **Project Structure:**

```
terraform-ansible-lemp/
├── terraform/
│   ├── main.tf
│   ├── variables.tf
├── ansible/
│   ├── hosts.ini
│   └── lemp.yml
├── index.html
├── run.sh
├── README.md
```

---

### ⚙️ **Technologies Used:**

* **Terraform** – Infrastructure as Code to provision EC2
* **Ansible** – Configuration management for LEMP installation
* **AWS EC2** – Cloud virtual server
* **Ubuntu 22.04** – EC2 OS
* **LEMP Stack** – Linux, Nginx, MySQL, PHP

---

### 🔧 **Setup Instructions:**

#### 1. Clone the Repository:

```bash
git clone https://github.com/your-username/terraform-ansible-lemp.git
cd terraform-ansible-lemp
```

#### 2. Update Terraform Files:

In `terraform/main.tf`, update:

* `ami` (based on region)
* `key_name` (your EC2 key pair name)
* Replace `your-key.pem` with the correct path to your private key

#### 3. Make `run.sh` Executable:

```bash
chmod +x run.sh
```

#### 4. Run the Automation:

```bash
./run.sh
```

---

### 🌐 **Static Web Page Included**

A simple `index.html` file is included, containing cloud computing information styled with CSS and images.

To host this:

* Place it in `/var/www/html/` after LEMP setup:

```bash
sudo mv index.html /var/www/html/
```

* Visit the EC2 public IP to view the page.

---

### 📷 **Preview of the Web Page**

![Preview](https://cdn-icons-png.flaticon.com/512/873/873120.png)
*A sample cloud info card in the index.html*

---

### ✅ **Validation Checklist:**

* [x] EC2 instance created
* [x] Public IP added to Ansible inventory
* [x] LEMP installed using Ansible
* [x] Web page accessible via EC2 IP

---

### 📬 **Author**

**Swati Zampal**
Cloud & DevOps Trainer
[LinkedIn](https://linkedin.com/in/swati-gandamal-zampal) | [GitHub](https://github.com/Swatiz-cloud)

---
