# S3 Jekyll Blog
The purpose of this project is to contains all the pieces one would need to build a [jekyll](http://jekyllrb.com/) blog and deploy it to [Amazon S3](http://aws.amazon.com/s3/) but all of the tools will sit inside a [Vagrant](http://www.vagrantup.com/) box so it will work on anything that vagrant will install onto (including windows!).

## Environment Setup
1. Install [Virtualbox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)

## Blog Setup
1. Clone this repository
2. In your clone on the command line run: vagrant up
3. After the vagrant box comes up ssh into the box: vagrant ssh 
4. Go to the source code: cd /vagrant 
5. Start up the jekyll preview: jekyll serve -w
6. Preview your blog! [http://192.168.33.11:4000](http://192.168.33.11:4000)
7. _config.yml contains all the configurations for your blog

## Deploy to S3

```
# example amazons3.yml
bucket: my_s3_bucket_name
access_key_id: my_s3_bucket_key_id
secret_access_key: my_s3_bucket_secret
```
1. Create a file called amazons3.yml in the root of the source directory
2. Inside vagrant in the /vagrant build your blog: jekyll build
3. In that same directory deploy your code: cap deploy