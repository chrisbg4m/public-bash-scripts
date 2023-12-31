#!/bin/bash

# Script to install everything you need to run the test automation when setting up a new machine. 

# Author: Chris Briggs
# Version: 0.1

# Sets a folder name variable 

folder=Development

# Creates and navigates into folder called 'Development'
# This is where all git repos are saved

mkdir -p ~/$folder 
cd ~/$folder

if [ "$(pwd)" == "/home/$USER/$folder" ]; then
  echo 'The Development folder has been created successfully'
else
  echo 'The Development folder has not been created successfully'
fi

# Installs Github
# You will be prompted for your admin password at this stage

sudo apt-get install git

Do you want to continue? [Y/n] Y

COMPLETE

THIRD STEP

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg

FOURTH STEP

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

FIFTH STEP

sudo apt update

SIXTH STEP

sudo apt install gh


#SSH Key Steps

#Generate rsa SSH Key

ssh-keygen -t rsa

Enter file in which to save the key (/home/chris.briggs/.ssh/id_rsa):  [enter]
Enter passphrase (empty for no passphrase):   [enter]
Enter same passphrase again:  [enter]

#Open key file and print in command line

cat ~/.ssh/id_rsa.pub

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJO0BNT8OlimKGxIDL0Oy3xowAv2ZKKM1r/iOO9HTrVzNc6LIvlcDada0VuoK70JFIpWnjsRpACvwtZgVcgfTuyv7q1rj539LwNJJdB2h5AsV1TcPOVHz0r/Ebc8IN81e52uK97jXWZCR0tq2JCzFgYpENVY79mo78S7nIWnSLdVGSglWM9YfQS2cGPyJ474/KVyMSTHPLErfGSYfRjX3oaVmWnmBYKebP9jfbk+WBEz0ThPB+BDkZBw/O7auyBMk+NzDgRiSt4ID620oKkfXaM+emTpyzHRPRCvruOSKUQehauyfid978mEH/vedlZAkyuFOhIVxgqYTbVdh2i/EfHfoxILA1x7SwZ1yhCuHDGGfot2HBtIoCGHwzYweVDEns/+bhWfwHNW2kILIxPH9kEzOsfvHyFHuBKCynqOkpdwx6wd7SE4gRkHbnTPlqLT5EKYwjgV5DaSFXO0nwErsqhiCXAtY+c4gBdd5+cmsdFFWWiVuPx8zWajTNtxDXtHc= 


ADD SSH Key to webdriver

# Before this, the user must have forked the origin repository to their own github account



chris.briggs@G4M0124:~/Development$ git clone git@github.com:chrisbg4m/webdriverio-framework.git



Are you sure you want to continue connecting (yes/no/[fingerprint])? yes


chris.briggs@G4M0124:~/Development$ ls
webdriverio-framework

chris.briggs@G4M0124:~/Development$ cd webdriverio-framework/
chris.briggs@G4M0124:~/Development/webdriverio-framework$ ls

config  docker-compose.ci.yml  docker-compose.yml  Dockerfile  docs  jsconfig.json  logs  package.json  pages  README.md  reports  screenshots  tests  utils

chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm -v
7.20.6

chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm install


chris.briggs@G4M0124:~/Development/webdriverio-framework$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 13226  100 13226    0     0  46244      0 --:--:-- --:--:-- --:--:-- 46083
=> Downloading nvm from git to '/home/chris.briggs/.nvm'
=> Initialised empty Git repository in /home/chris.briggs/.nvm/.git/
remote: Enumerating objects: 278, done.
remote: Counting objects: 100% (278/278), done.
remote: Compressing objects: 100% (245/245), done.
remote: Total 278 (delta 31), reused 101 (delta 20), pack-reused 0
Receiving objects: 100% (278/278), 142.25 KiB | 872.00 KiB/s, done.
Resolving deltas: 100% (31/31), done.
From https://github.com/creationix/nvm
 * [new tag]         v0.34.0    -> v0.34.0
=> Compressing and cleaning up git repository

=> nvm source string already in /home/chris.briggs/.bashrc
=> bash_completion source string already in /home/chris.briggs/.bashrc
=> You currently have modules installed globally with `npm`. These will no
=> longer be linked to the active version of Node when you install a new node
=> with `nvm`; and they may (depending on how you construct your `$PATH`)
=> override the binaries of modules installed with `nvm`:

/home/chris.briggs/.nvm/versions/node/v16.6.2/lib
├── newman-reporter-htmlextra@1.22.1
├── newman@5.3.0
=> If you wish to uninstall them at a later point (or re-install them under your
=> `nvm` Nodes), you can remove them from the system Node as follows:

     $ nvm use system
     $ npm uninstall -g a_module

=> Close and reopen your terminal to start using nvm or run the following to use it now:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
chris.briggs@G4M0124:~/Development/webdriverio-framework$ ^C
chris.briggs@G4M0124:~/Development/webdriverio-framework$ -v nvm
-v: command not found
chris.briggs@G4M0124:~/Development/webdriverio-framework$ command -v npm
/home/chris.briggs/.nvm/versions/node/v16.6.2/bin/npm
chris.briggs@G4M0124:~/Development/webdriverio-framework$ nvm install node
Downloading and installing node v17.0.1...
Downloading https://nodejs.org/dist/v17.0.1/node-v17.0.1-linux-x64.tar.xz...
################################################################################################################################################################################## 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v17.0.1 (npm v8.1.0)
chris.briggs@G4M0124:~/Development/webdriverio-framework$ nvm ls-remote


chris.briggs@G4M0124:~/Development/webdriverio-framework$ nvm install v14.17.0
Downloading and installing node v14.17.0...
Downloading https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz...
################################################################################################################################################################################## 100.0%
Computing checksum with sha256sum
Checksums matched!
Now using node v14.17.0 (npm v6.14.13)
chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm install
npm WARN read-shrinkwrap This version of npm is compatible with lockfileVersion@1, but package-lock.json was generated for lockfileVersion@2. I'll try to do my best with it!

> fibers@5.0.0 install /home/chris.briggs/Development/webdriverio-framework/node_modules/fibers
> node build.js || nodejs build.js

`linux-x64-83-glibc` exists; testing
Binary is fine; exiting
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@2.3.2 (node_modules/fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@2.3.2: wanted {"os":"darwin","arch":"any"} (current: {"os":"linux","arch":"x64"})

updated 617 packages and audited 623 packages in 11.5s

59 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities

chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm run test:desktop -- --spec=./tests/desktop/header.spec.js

> webdriverio-framework@1.0.0 test:desktop /home/chris.briggs/Development/webdriverio-framework
> wdio ./config/desktop.conf.js "--spec=./tests/desktop/header.spec.js"


Execution of 1 workers started at 2021-11-02T11:53:31.972Z

npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! webdriverio-framework@1.0.0 test:desktop: `wdio ./config/desktop.conf.js "--spec=./tests/desktop/header.spec.js"`
npm ERR! Exit status 1
npm ERR! 
npm ERR! Failed at the webdriverio-framework@1.0.0 test:desktop script.
npm ERR! This is probably not a problem with npm. There is likely additional logging output above.

npm ERR! A complete log of this run can be found in:
npm ERR!     /home/chris.briggs/.npm/_logs/2021-11-02T11_53_36_767Z-debug.log
chris.briggs@G4M0124:~/Development/webdriverio-framework$ -v java
-v: command not found
chris.briggs@G4M0124:~/Development/webdriverio-framework$ java -v

Command 'java' not found, but can be installed with:

sudo apt install openjdk-11-jre-headless  # version 11.0.11+9-0ubuntu2~20.04, or
sudo apt install default-jre              # version 2:1.11-72
sudo apt install openjdk-13-jre-headless  # version 13.0.7+5-0ubuntu1~20.04
sudo apt install openjdk-16-jre-headless  # version 16.0.1+9-1~20.04
sudo apt install openjdk-17-jre-headless  # version 17+35-1~20.04
sudo apt install openjdk-8-jre-headless   # version 8u292-b10-0ubuntu1~20.04

chris.briggs@G4M0124:~/Development/webdriverio-framework$ java -version

Command 'java' not found, but can be installed with:

sudo apt install openjdk-11-jre-headless  # version 11.0.11+9-0ubuntu2~20.04, or
sudo apt install default-jre              # version 2:1.11-72
sudo apt install openjdk-13-jre-headless  # version 13.0.7+5-0ubuntu1~20.04
sudo apt install openjdk-16-jre-headless  # version 16.0.1+9-1~20.04
sudo apt install openjdk-17-jre-headless  # version 17+35-1~20.04
sudo apt install openjdk-8-jre-headless   # version 8u292-b10-0ubuntu1~20.04

chris.briggs@G4M0124:~/Development/webdriverio-framework$ sudo apt install default-jre
[sudo] password for chris.briggs: 

Do you want to continue? [Y/n] y





chris.briggs@G4M0124:~/Development/webdriverio-framework$ sudo apt install openjdk-17-jre-headless

Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  libllvm10 shim
Use 'sudo apt autoremove' to remove them.
Suggested packages:
  fonts-ipafont-gothic fonts-ipafont-mincho fonts-wqy-microhei | fonts-wqy-zenhei
CThe following NEW packages will be installed
  openjdk-17-jre-headless
0 to upgrade, 1 to newly install, 0 to remove and 39 not to upgrade.
Need to get 43.5 MB of archives.
After this operation, 193 MB of additional disk space will be used.
Get:1 http://gb.archive.ubuntu.com/ubuntu focal-updates/universe amd64 openjdk-17-jre-headless amd64 17+35-1~20.04 [43.5 MB]
Fetched 43.5 MB in 3s (13.2 MB/s)                   
Selecting previously unselected package openjdk-17-jre-headless:amd64.
(Reading database ... 289052 files and directories currently installed.)
Preparing to unpack .../openjdk-17-jre-headless_17+35-1~20.04_amd64.deb ...
Unpacking openjdk-17-jre-headless:amd64 (17+35-1~20.04) ...
Setting up openjdk-17-jre-headless:amd64 (17+35-1~20.04) ...
update-alternatives: using /usr/lib/jvm/java-17-openjdk-amd64/bin/java to provide /usr/bin/java (java) in auto mode
update-alternatives: using /usr/lib/jvm/java-17-openjdk-amd64/bin/jpackage to provide /usr/bin/jpackage (jpackage) in auto mode
update-alternatives: using /usr/lib/jvm/java-17-openjdk-amd64/bin/keytool to provide /usr/bin/keytool (keytool) in auto mode
update-alternatives: using /usr/lib/jvm/java-17-openjdk-amd64/bin/rmiregistry to provide /usr/bin/rmiregistry (rmiregistry) in auto mode
update-alternatives: using /usr/lib/jvm/java-17-openjdk-amd64/lib/jexec to provide /usr/bin/jexec (jexec) in auto mode
chris.briggs@G4M0124:~/Development/webdriverio-framework$ ^C
chris.briggs@G4M0124:~/Development/webdriverio-framework$ 

chris.briggs@G4M0124:~$ cd 
.cache/           Desktop/          Downloads/        .gsutil/          Music/            .nvm/             Public/           Templates/        Videos/           
.cert/            Development/      .gnupg/           .local/           node_modules/     Pictures/         snap/             test/             .vscode/          
.config/          Documents/        google-cloud-sdk/ .mozilla/         .npm/             .pki/             .ssh/             .thunderbird/     .zoom/            
chris.briggs@G4M0124:~$ cd 
.cache/           Desktop/          Downloads/        .gsutil/          Music/            .nvm/             Public/           Templates/        Videos/           
.cert/            Development/      .gnupg/           .local/           node_modules/     Pictures/         snap/             test/             .vscode/          
.config/          Documents/        google-cloud-sdk/ .mozilla/         .npm/             .pki/             .ssh/             .thunderbird/     .zoom/            
chris.briggs@G4M0124:~$ cd Development/
chris.briggs@G4M0124:~/Development$ ls
webdriverio-framework
chris.briggs@G4M0124:~/Development$ cd webdriverio-framework/
chris.briggs@G4M0124:~/Development/webdriverio-framework$ ls
config                 docker-compose.yml  docs           logs          package.json       pages      reports      tests
docker-compose.ci.yml  Dockerfile          jsconfig.json  node_modules  package-lock.json  README.md  screenshots  utils
chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm run test:desktop -- --spec=./tests/desktop/header.spec.js

> webdriverio-framework@1.0.0 test:desktop
> wdio ./config/desktop.conf.js "--spec=./tests/desktop/header.spec.js"


Execution of 1 workers started at 2021-11-02T12:00:04.819Z

[0-0] RUNNING in chrome - /tests/desktop/header.spec.js
[0-0] FAILED in chrome - /tests/desktop/header.spec.js

Spec Files:  0 passed, 1 failed, 1 total (100% completed) in 00:00:22 

chris.briggs@G4M0124:~/Development/webdriverio-framework$ 



PART TWO


chris.briggs@G4M0124:~$ cd 
.cache/           Desktop/          Downloads/        .gsutil/          Music/            .nvm/             Public/           Templates/        Videos/           
.cert/            Development/      .gnupg/           .local/           node_modules/     Pictures/         snap/             test/             .vscode/          
.config/          Documents/        google-cloud-sdk/ .mozilla/         .npm/             .pki/             .ssh/             .thunderbird/     .zoom/            
chris.briggs@G4M0124:~$ cd 
.cache/           Desktop/          Downloads/        .gsutil/          Music/            .nvm/             Public/           Templates/        Videos/           
.cert/            Development/      .gnupg/           .local/           node_modules/     Pictures/         snap/             test/             .vscode/          
.config/          Documents/        google-cloud-sdk/ .mozilla/         .npm/             .pki/             .ssh/             .thunderbird/     .zoom/            
chris.briggs@G4M0124:~$ cd Development/
chris.briggs@G4M0124:~/Development$ ls
webdriverio-framework
chris.briggs@G4M0124:~/Development$ cd webdriverio-framework/
chris.briggs@G4M0124:~/Development/webdriverio-framework$ ls
config                 docker-compose.yml  docs           logs          package.json       pages      reports      tests
docker-compose.ci.yml  Dockerfile          jsconfig.json  node_modules  package-lock.json  README.md  screenshots  utils




chris.briggs@G4M0124:~/Development/webdriverio-framework$ git remote -v
origin  git@github.com:chrisbg4m/webdriverio-framework.git (fetch)
origin  git@github.com:chrisbg4m/webdriverio-framework.git (push)

chris.briggs@G4M0124:~/Development/webdriverio-framework$ git remote add upstream git@github.com:Gear4music/webdriverio-framework.git

chris.briggs@G4M0124:~/Development/webdriverio-framework$ git remote -v
origin  git@github.com:chrisbg4m/webdriverio-framework.git (fetch)
origin  git@github.com:chrisbg4m/webdriverio-framework.git (push)
upstream  git@github.com:Gear4music/webdriverio-framework.git (fetch)
upstream  git@github.com:Gear4music/webdriverio-framework.git (push)


chris.briggs@G4M0124:~/Development/webdriverio-framework$ git pull upstream master





chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm install

chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm -v
7.20.6




chris.briggs@G4M0124:~/Development/webdriverio-framework$ node -v
v16.6.2

chris.briggs@G4M0124:~/Development/webdriverio-framework$ sudo apt-get remove nodejs
[sudo] password for chris.briggs: 



Do you want to continue? [Y/n] y

chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm -v
7.20.6

#CHECK THE NODE

chris.briggs@G4M0124:~/Development/webdriverio-framework$ node -v
v16.6.2

#IF NOT 14.17.0, THEN FOLLOW BELOW:

chris.briggs@G4M0124:~/Development/webdriverio-framework$ nvm use 14.17.0
Now using node v14.17.0 (npm v6.14.13)



chris.briggs@G4M0124:~/Development/webdriverio-framework$ npm run test:desktop -- --spec=./tests/desktop/header.spec.js

> webdriverio-framework@1.0.0 test:desktop /home/chris.briggs/Development/webdriverio-framework
> wdio ./config/g4m/standard/desktop.conf.js "--spec=./tests/desktop/header.spec.js"


Execution of 1 workers started at 2021-11-02T13:00:59.430Z

[0-0] RUNNING in chrome - /tests/desktop/header.spec.js
[0-0] PASSED in chrome - /tests/desktop/header.spec.js

 "spec" Reporter:
------------------------------------------------------------------
[chrome 95.0.4638.69 linux #0-0] Running: chrome (v95.0.4638.69) on linux
[chrome 95.0.4638.69 linux #0-0] Session ID: 17ceefc033057779c92a9a1c677d149b
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0] » /tests/desktop/header.spec.js
[chrome 95.0.4638.69 linux #0-0] Desktop - Header Menu
[chrome 95.0.4638.69 linux #0-0]     Basket Navigation - @smoke
[chrome 95.0.4638.69 linux #0-0]        ✓ clicks the Basket icon and is navigated to an empty basket page
[chrome 95.0.4638.69 linux #0-0]        ✓ clicks the Basket icon and is navigated to a populated basket page
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0]     Nav Menu - @smoke
[chrome 95.0.4638.69 linux #0-0]        ✓ displays the Nav Menu
[chrome 95.0.4638.69 linux #0-0]        ✓ can navigate to a top-level menu link
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0]     My Account Navigation - @smoke
[chrome 95.0.4638.69 linux #0-0]        ✓ clicks the 'My Account' icon as a Guest and is naviated to the 'Log In' page
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0]     Trustpilot
[chrome 95.0.4638.69 linux #0-0]        - Trustpilot is visible
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0]     Search - @smoke
[chrome 95.0.4638.69 linux #0-0]        - performs a search and results are returned
[chrome 95.0.4638.69 linux #0-0]        - searches for a brand and redirects to a brand PLP
[chrome 95.0.4638.69 linux #0-0]        - searches for exact product name
[chrome 95.0.4638.69 linux #0-0]        - searches for a category name and redirects to a category PLP
[chrome 95.0.4638.69 linux #0-0]        - searches for MT1 product code and expects only 1 result
[chrome 95.0.4638.69 linux #0-0]        - searches for MT1 product ID and expects only 1 result
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0]     Quick search
[chrome 95.0.4638.69 linux #0-0]        ✓ performs a 'quick-search' and results are returned
[chrome 95.0.4638.69 linux #0-0]        ✓ searches for exact product name
[chrome 95.0.4638.69 linux #0-0]        ✓ searches for MT1 product code and expects only 1 result
[chrome 95.0.4638.69 linux #0-0]        ✓ searches for MT1 product ID and expects only 1 result
[chrome 95.0.4638.69 linux #0-0]
[chrome 95.0.4638.69 linux #0-0] 9 passing (55.5s)
[chrome 95.0.4638.69 linux #0-0] 7 skipped


Spec Files:  1 passed, 1 total (100% completed) in 00:01:02 
