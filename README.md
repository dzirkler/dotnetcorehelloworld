# .NET Core Hello World Codefresh Demo

[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=dzirkler&repoName=dotnetcorehelloworld&branch=master&pipelineName=dotnetcorehelloworld&accountName=dzirkler&type=cf-1)]( https://g.codefresh.io/repositories/dzirkler/dotnetcorehelloworld/builds?filter=trigger:build;branch:master;service:58e01fab16247f01003ce312~dotnetcorehelloworld)

This was set up as a proof-of-concept to perform a CodeFresh build for a .NET Core app. The app can be found in 
the `/hwapp` folder, and is simply the result of a `dotnet new console -o hwapp` command, as documented on the 
[.NET Core Getting Started](https://www.microsoft.com/net/core) page.

I wanted to be able to use [CodeFresh](http://codefresh.io) to enable Continuous Integration for .NET Core apps.
[Microsoft provides](https://hub.docker.com/r/microsoft/dotnet/) both runtime and sdk builds for .NET Core. 
Unforutnately, to build a .NET Core app from source code, you need to use the SDK. Once you have the files built, 
you can use the built files in the runtime container. This enables us to have a smaller container, and only contain
the minimum to run our application (which also enhances security by not including the sdk). Additionally, we do not 
need to include our source code in the container!

The way this works, is we fire up a container with the SDK and perform a build on a mounted volume. Then, we use
the output folder from the build (`/out`) to create a new image. The same paradigm works in CodeFresh and locally.




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




## Thanks to
* The general approach was borrowed from [Steve Lasker's Blog](https://blogs.msdn.microsoft.com/stevelasker/2016/09/29/building-optimized-docker-images-with-asp-net-core/)

