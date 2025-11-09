# 🧠 Day 1 – Environment Setup for SQL Server

## 🎯 Objective
To prepare the complete environment for practicing Microsoft SQL Server using **VMware**, **Windows Server 2016**, **SQL Server 2022 Developer Edition**, and **SQL Server Management Studio (SSMS 21)**.

---

## ⚙️ Step-by-Step Setup

### 🧩 Step 1 – VMware Workstation Setup
- Opened **VMware Workstation Pro**.
- Created a new virtual machine named **MSSQLServer**.
- Chose **Custom (Advanced)** setup.
- Configured:
  - 2 CPU cores  
  - 3 GB RAM  
  - 50 GB NVMe virtual disk  
- Mounted **Windows Server 2016 ISO**.

📸 Screenshot:  
![VMware Setup](./images/01_vmware_setup_MSSQLServer.png)

---

### 💻 Step 2 – Windows Server 2016 Installation
- Installed **Windows Server 2016 Datacenter Evaluation**.
- Set **Administrator** password and logged in.
- Verified that the server runs correctly inside VMware.

📸 Screenshot:  
![Windows Server Installation](./images/02_windowsServer2016_installation.png)

---

### 🧱 Step 3 – Microsoft SQL Server 2022 Installation
- Installed **SQL Server 2022 Developer Edition**.
- Selected:
  - Database Engine Services  
  - SQL Replication  
  - Client Tools  
- Authentication Mode: **Windows Authentication**
- Verified the **SQL Server instance** via Configuration Manager.

📸 Screenshot:  
![SQL Server Installation](./images/03_SQL_Server_Installation.png)

---

### 🧰 Step 4 – SQL Server Management Studio (SSMS 21)
- Installed **SQL Server Management Studio 21**.
- Opened SSMS and connected successfully to the local SQL instance.
- Verified databases such as **AdventureWorks2022**, **OurFirstDatabase**, and **school_db**.

📸 Screenshot:  
![SSMS 21](./images/04_SQL_Server_Management_Studio_21.png)
