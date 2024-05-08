# terra-multistage

             +----------------------------------+
             |            Jenkins Server         |
             |                                  |
             |    +-------------------------+   |
             |    |   terra-multistage Repo |   |
             |    +-------------------------+   |
             +------------------+---------------+
                                |
                                v
     +--------------------------------------------+
     |                   Terraform                |
     |                                            |
     |  +----------+   +---------+   +----------+ |
     |  | Modules  |   |   Dev   |   |   Prod   | |
     |  +----------+   +---------+   +----------+ |
     |     |              |               |       |
     |     v              v               v       |
     |  +--------------------------------------+  |
     |  |      AWS Resources (Dev Environment) |  |
     |  |                                      |  |
     |  |  +---+  +---+  +---+  +---+  +---+   |  |
     |  |  | VPC|  | Subnet | | IGW | | RT  |   |  |
     |  |  +---+  +---+  +---+  +---+  +---+   |  |
     |  |                |         |            |  |
     |  |                |         |            |  |
     |  |                +---------+            |  |
     |  |                       |                |  |
     |  |                       v                |  |
     |  |                 EC2 Instance           |  |
     |  |                 (HTTPD Server)         |  |
     |  +--------------------------------------+  |
     |                                            |
     |  +--------------------------------------+  |
     |  | AWS Resources (Prod Environment)       |  |
     |  |                                      |  |
     |  |  +---+  +---+  +---+  +---+  +---+   |  |
     |  |  | VPC|  | Subnet | | IGW | | RT  |   |  |
     |  |  +---+  +---+  +---+  +---+  +---+   |  |
     |  |                |         |            |  |
     |  |                |         |            |  |
     |  |                +---------+            |  |
     |  |                       |                |  |
     |  |                       v                |  |
     |  |                 EC2 Instance           |  |
     |  |                 (Nginx Server)         |  |
     |  +--------------------------------------+  |
     +--------------------------------------------+

Explanation:

Jenkins Server: Triggers the deployment process.

Git Repository (terra-multistage): Contains the Terraform code organized into modules, dev, and prod directories.

Modules Directory: Contains reusable Terraform modules for different components (VPC, Subnet, IGW, RT, Security Group, EC2 Instance).

Dev and Prod Directories: Organize the environment-specific Terraform configurations.

Terraform: Executes the Terraform scripts based on the configurations provided.

AWS Resources: Provisioned based on the configurations provided in the dev and prod directories. Each environment has its set of VPC, Subnet, IGW, RT, Security Group, and EC2 Instance. The EC2 Instance in the dev environment runs an HTTPD server with a static website, while the EC2 Instance in the prod environment runs an Nginx server.

This diagram illustrates the flow from the code repository to deployment via Jenkins, with Terraform orchestrating the provisioning of infrastructure resources in both the dev and prod environments.