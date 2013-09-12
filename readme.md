# S3 Jekyll Blog
A [vagrant](http://www.vagrantup.com/) encapsulated skeleton repository to build out a
blog with [jekyll](http://jekyllrb.com/) and deploy it to [amazon s3](http://aws.amazon.com/s3/) with
[capistrano](http://www.capistranorb.com/). The advantage is you can work on your blog on any machine
that vagrant supports. Including Windows!

## Environment Setup
1. Install [Virtualbox](https://www.virtualbox.org/)
2. Install [Vagrant](http://www.vagrantup.com/)

## Blog Setup
1. Fork and clone this repository
2. In your clone on the command line run: `vagrant up`
3. After the vagrant box comes up ssh into the box: `vagrant ssh `
4. Go to the clone in vagrant: `cd /vagrant`
5. Start up the jekyll preview: `jekyll serve -w`
6. Preview your blog! [http://192.168.33.11:4000](http://192.168.33.11:4000)

note: for information on jekyll and adding more posts please see the [jekyll documenation](http://jekyllrb.com/docs/home/)

## Deploy to S3

```
# example amazons3.yml
bucket: my_s3_bucket_name
access_key_id: my_s3_bucket_key_id
secret_access_key: my_s3_bucket_secret
```
1. Create a file called amazons3.yml in the root of the clone
2. Inside vagrant in the /vagrant build your blog: `jekyll build`
3. In that same directory deploy your code: `cap deploy`
