# Jenkings-multibranch

This is a project template to use Jenkins Pipeline with testing multiple Git branches. It includes a Jenkins server
for testing purposes (by using Docker Compose).

## Usage

### Requirements

Docker and Docker Compose.

### Installation

For an existing project your would like to extend, just the copy the essential files over (just the *Jenkinsfile* and
the *ci* folder):

    cd YOUR_WORKSPACE
    git clone https://github.com/wearespindle/jenkins-multibranch
    cd YOUR_EXISTING_PROJECT
    cp ../jenkins-multibranch/Jenkinsfile .
    cp -r ../jenkins-multibranch/ci .

As an alternative, *fork* and clone this project so that you can directly test your CI workflow without messing up with
an existing project. This is useful because you need to push commits and branches to trigger and test job builds.


### Running

    mkdir -p ci/jenkins_home
    docker-compose -f ci/docker-compose.yml up

Go to [http://localhost:8080/](http://localhost:8080/) to use Jenkins for testing your CI pipeline. To make full use
of every example feature in the Jenkinsfile, install the following plugins:
* Blue Ocean
* Slack Notification Plugin
* HTML Publisher plugin
* Warnings Plug-in
* Checkstyle Plug-in
* Static Analysis Collector Plug-in
* Cobertura Plugin

Go to [http://localhost:8080/blue/](http://localhost:8080/blue/) for the Blue Ocean interface. Add your project as
a new pipeline - so either your existing project or the forked Jenkins-multibranch project. Configure the job to poll
every minute in the job settings.

You can now push commits/branches to trigger builds!

After stopping it, you can remove the contents of the jenkins_home directory if you want to start with fresh Jenkins
again:

    rm -rf ci/jenkins_home/*

## Contributing

See the [CONTRIBUTING.md](CONTRIBUTING.md) file on how to contribute to this project.

## Contributors

See the [CONTRIBUTORS.md](CONTRIBUTORS.md) file for a list of contributors to the project.

## Get in touch with a developer

If you want to report an issue see the [CONTRIBUTING.md](CONTRIBUTING.md) file for more info.

We will be happy to answer your other questions at opensource@wearespindle.com

## License

Jenkins-multibranch is made available under the MIT license. See the [LICENSE file](LICENSE) for more info.
