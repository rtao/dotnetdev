#!/bin/bash
/usr/bin/dotnet restore /var/tmp/dotnetdev
/usr/bin/dotnet build /var/tmp/dotnetdev
/usr/bin/dotnet run /var/tmp/dotnetdev