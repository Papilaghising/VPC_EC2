Description
EC2 instance creation
Use backend as S3 for terraform
Implement and research on the following concept
Terraform variables
Terraform outputs
Terraform function
Terraform modules
Meta arguments
count
for_each

 

1.EC2 instance creation

Install Tearraform for windows 

Open Screenshot 2024-05-13 143422.png
Screenshot 2024-05-13 143422.png
Update path environment variable

Navigate to edit the system enviroment variable > Environment variables > system variables > path > new >add >okay

Open environment.png
environment.png
 

Open path.png
path.png
 

Open new.png
new.png
Open a Command prompt and run this command to verify Terraform is installed successfully

Open Screenshot 2024-05-13 144608.png
Screenshot 2024-05-13 144608.png
vscode = terraform>ec2>files 

backend.tf

Open Screenshot 2024-05-13 153516.png
Screenshot 2024-05-13 153516.png
output.tf

Open Screenshot 2024-05-13 153715.png
Screenshot 2024-05-13 153715.png
provider.tf

Open Screenshot 2024-05-13 153758.png
Screenshot 2024-05-13 153758.png
variables.tf

Open Screenshot 2024-05-13 153843.png
Screenshot 2024-05-13 153843.png
vscode terminal

aws configure

aws sts get-caller-identity

terraform init 

Open Screenshot 2024-05-13 160436.png
Screenshot 2024-05-13 160436.png
 

terraform plan

Open Screenshot 2024-05-13 160018.png
Screenshot 2024-05-13 160018.png
Open Screenshot 2024-05-13 160031.png
Screenshot 2024-05-13 160031.png
terraform apply

Open Screenshot 2024-05-13 160234.png
Screenshot 2024-05-13 160234.png
 

Open Screenshot 2024-05-13 160251.png
Screenshot 2024-05-13 160251.png
ec2 instance created using terraform

Open Screenshot 2024-05-13 155353.png
Screenshot 2024-05-13 155353.png
sso login 

aws configure sso

Open Screenshot 2024-05-13 154946.png
Screenshot 2024-05-13 154946.png
aws sso login

Open Screenshot 2024-05-13 155002.png
Screenshot 2024-05-13 155002.png
 

Open Screenshot 2024-05-13 154853.png
Screenshot 2024-05-13 154853.png
ssh into the ec2

add security groups in main.tf

Open Screenshot 2024-05-13 164501.png
Screenshot 2024-05-13 164501.png


terraform init
terraform plan
terraform apply
Go to CLI and ssh -i "papila.pem" ubuntu@ec2-34-207-187-205.compute-1.amazonaws.com

Open Screenshot 2024-05-13 164821.png
Screenshot 2024-05-13 164821.png
Terraform function : built-in, reusable code blocks that perform specific tasks within Terraform configurations.

Terraform function types
Function Type

Description

String

String related operations (format, join, split)

Numeric

Numeric related operations (min, max, pow)

Collection

Functions that manipulate lists, tuples, sets and maps (length, lookup, merge)

Date and Time

Manipulate date and time (formatdate, timestamp)

Crypto and Hash   

Crypto and Hash functions (base64sha512, bcrypt)

Filesystem

File system operations (file, filexists, abspath)

Ip Network

Network Cidr functions (cidrsubnet, cidrhost)

Encoding

Encoding and decoding functions (base64decode, base64encode, jsonencode)

Type Conversion

Functions that convert data types (tobool, tomap, tolist)

Terraform Module : Modules are containers for multiple resources that are used together. A module consists of a collection of .tf and/or .tf.json files kept together in a directory.

Types of Terraform modules

Modules are used to create reusable components inside your infrastructure. There are primarily two types of modules depending on how they are written (root and child modules), and depending if they are published or not, we identify two different types as well (local and published).

Root module : The root module consists of all the resources defined in the .tf files in a Terraform configuration, meaning that all Terraform configurations have their own root module. Even if you are simply creating a main.tf that has just a locals block inside of it with a local variable, that is still considered a root module. This can be confusing, but keep in mind that every Terraform configuration can become a reusable module for other configurations. Every module can call other modules, and all of the modules called inside another module are considered child modules.

Child module: Calling a child module means to include all the resources defined in that module in the current configuration. This is done by using a module block inside your Terraform configuration:



module "webservers" {
   source = "../webservers"
}
You can call the same module as many times as you want and configure it to your liking.

Local module : A local module is a module that wasn’t published in any registry and when it is sourced, it is using the path to that particular module.

Published module : A published module refers to a module that has been pushed to a Terraform Registry, or even simply on a VCS and has a tag associated with it. When a published module is sourced, the URL of that module is used either from the registry or from the VCS itself.

 

Meta arguments : meta-arguments are special arguments used to modify the behavior of resources or blocks. They provide additional functionality beyond the standard resource configuration.

Allows to customize resource behavior, define dependencies between resources, control resource lifecycle, and associate providers with resources or blocks.

count
The count meta-argument in Terraform is used to create multiple instances of a resource based on a single resource configuration block. It's helpful when you want to create multiple similar resources with slight variations, such as multiple EC2 instances or multiple security groups.

for_each
The for_each meta-argument in Terraform is similar to count, but it allows you to create multiple instances of a resource based on a map or set of strings, rather than a single numerical value. This is useful when you want to create resources with unique identifiers or configurations.

