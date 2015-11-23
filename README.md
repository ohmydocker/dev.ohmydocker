# dev.ohmydocker
This is a development version of ohmydocker

to use this you can merely pull y prebuilt image from docker hub:

```
docker pull ohmydocker/dev.ohmydocker
```

then if you merely want to preview the dev site you can do this:

```
docker run --name=ohmydocker -p 3000:3000 -p 3001:3001 -t ohmydocker/dev.ohmydocker
```

but if you have write access on the OhMyDocker group you can include your .ssh directory (also your user must uid 1000 for this to work as a volume mount)

```
docker run --name=ohmydocker -p 3000:3000 -p 3001:3001 -v ~/.bash_profile:/home/yeoman/.bash_profile -v ~/.gitconfig:/home/yeoman/.gitconfig -v ~/.ssh:/home/yeoman/.ssh -t ohmydocker/dev.ohmydocker
```

then you can enter the container and
now you can alter the website and push changes

```
cd /srv/www/app
touch testfile
git add testfile
git commit -m testfile
git push ssh master
```

please note I have git configured so that http is on origin so anyone can pull update, but you'll need to push to the remote named ssh if you want to use your ssh keys


