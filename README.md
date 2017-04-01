# .NET Core Hello World Codefresh Demo

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=dzirkler&repoName=dotnetcorehelloworld&branch=master&pipelineName=dotnetcorehelloworld&accountName=dzirkler&type=cf-1)]( https://g.codefresh.io/repositories/dzirkler/dotnetcorehelloworld/builds?filter=trigger:build;branch:master;service:58e01fab16247f01003ce312~dotnetcorehelloworld)

This was set up as a proof-of-concept to perform a CodeFresh build for a .NET Core app. The app can be found in 
the `/hwapp` folder, and is simply the result of a `dotnet new console -o hwapp` command, as documented on the 
[.NET Core Getting Started](https://www.microsoft.com/net/core) page.


## Build locally for testing:

1. From the project directory (where this readme is located), build the app:  
`docker run -it --rm -v "$(pwd):/src" --workdir /src microsoft/dotnet:1.1.1-sdk /bin/bash /src/build.sh`
1. Build the docker image:  
`docker build . --tag organizaton/repo:tag`
1. Run the new image:  
`docker run organization/repo:tag`

## Build using CI in CodeFresh

1. Fork Repo to your own GitHub Org
1. Update `codefresh.yml` with your docker hub repo and image name.
1. Configure CodeFresh to build from the forked repo, using the `codefresh.yml`.
1. Marvel at the awesomeness of your own .NET Core app auto build!


