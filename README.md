# cloudops
A demo project using [Test Kitchen](http://kitchen.ci/) to provision test the provisioning of a linux instance using
both Vagrant and EC2.

## Running Instructions
Running the demo requires Test Kitchen and Chef to be installed.  The simplest way is to install the
[ChefDK](https://downloads.chef.io/chef-dk/) bundle but individual packages can also be used.

### Vagrant
Running against vagrant should require no configuration simply run:
```bash
kitchen verify
```
and test kitchen should download the vagrant box, provision with chef, and run the serverspecs against it.

To see the page being served, open the browser to [http://localhost:8080/](http://localhost:8080/]).

### AWS
To run on AWS EC2 requires an aws account with the command line tools configured with a default profile.  In addition,
if you wish to view the page after provisioning, the port must be opened in the security group.

Once that is complete, a .kitchen.local.yml file can be created by copying the .kitchen.yml.
The following parameters should be replaced:
```javascript
ssh_key
aws_ssh_key_id
```
Then run:
```bash
kitchen verify
```
as above.

To remove all environments simply run `kitchen destroy`.