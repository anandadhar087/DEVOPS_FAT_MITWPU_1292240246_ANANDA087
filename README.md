#  DEVOPS FAT 2: Docker Containerization Project

---

##  1. Core DevOps Concepts

The following five key DevOps concepts were central to completing this assignment:

1.  **Infrastructure as Code (IaC):** The **Dockerfile** itself is IaC. It defines the application's environment (base OS, commands) as version-controlled code, ensuring repeatable and reliable builds.
2.  **Continuous Integration (CI):** Using **`git commit`** and **`git push`** establishes the foundation for CI, where code changes are frequently merged into the main codebase (GitHub) for automated checks.
3.  **Containers:** Utilizing **Docker** packages the application and its dependencies into a single, portable unit (the image `myimage1:1.0`), ensuring consistency across all environments.
4.  **Version Control:** **Git** was used to track every change to the `Dockerfile`, providing a complete history, audit trail, and capability for collaboration.
5.  **Automation:** The **`docker build`** command automates the entire process of creating the execution environment, eliminating manual setup and reducing errors.

---

##  2. Execution and Commands Used

The assignment was completed through two phases: **Local Docker Build** and **Git Version Control**.

### **Phase 1: Docker Build and Test**

This process involved creating the image and verifying its successful execution.

| Command | Purpose |
| :--- | :--- |
| `sudo docker build -t myimage1:1.0 .` | Reads the `Dockerfile` and builds the image, tagging it with the name `myimage1` and version `1.0`. (`sudo` was required due to initial daemon permissions). |
| `sudo docker images` | Confirmed the image was successfully created and stored locally. |
| `sudo docker run myimage1:1.0` | Ran the image as a container, which successfully output the message: `Hello World..! from my first docker image`. |

### **Phase 2: Git Version Control and Push**

The following sequence of Git commands was used to initialize the repository, commit the `Dockerfile`, and push it to GitHub:

| Command | Purpose |
| :--- | :--- |
| `git init` | Initializes a new local Git repository. |
| `git add .` | Stages the `Dockerfile` for the first commit. |
| `git commit -m"project added"` | Saves the changes to the local repository history. |
| `git remote add origin ...` | Links the local repository to the remote GitHub URL. |
| `git push origin master` | **Initial push** to create the `master` branch on GitHub. |
| `git branch -m master main` | **Renames** the local `master` branch to the standard `main`. |
| `git push --force origin main` | **Force-pushes** the local work onto the remote `main` branch (to resolve the conflict with the default `main` branch created by GitHub). |
| `git pull origin main` | **Merges** the remote `README.md` (created online) into the local `main` branch. |
| `git push origin --delete master` | **Cleans up** by deleting the obsolete `master` branch from GitHub. |

---

##  3. Learning Benefits

This assignment provided practical reinforcement of four critical areas:

* **DevOps:** Demonstrated the principle of treating infrastructure as code (`Dockerfile`) and integrating source control (`Git`) for a reproducible build process.
* **Linux:** Required command-line proficiency, using utilities like `cd`, `ls`, `mv`, and critically, understanding and managing user permissions via `sudo`.
* **Git:** Provided essential experience with the core workflow (`init`, `add`, `commit`, `push`) and vital **troubleshooting** for advanced scenarios like branch renaming, merge conflicts, and force-pushing.
* **Docker:** Solidified the entire container lifecycle: definition (`Dockerfile`), image creation (`docker build`), image tagging, and container execution (`docker run`).

---

##  **Repository Link**

[https://github.com/anandadhar087/DEVOPS\_FAT\_MITWPU\_1292240246\_ANANDA087](https://github.com/anandadhar087/DEVOPS_FAT_MITWPU_1292240246_ANANDA087)
