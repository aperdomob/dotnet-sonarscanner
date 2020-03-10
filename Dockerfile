FROM mcr.microsoft.com/dotnet/core/sdk:3.0

RUN apt-get update \
    && apt-get dist-upgrade -y

RUN apt-get install -y \
        openjdk-11-jre
# Cleanup
RUN apt-get -q autoremove \
    && apt-get -q clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin
