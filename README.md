# azure-plex
Run a media server using files stored in the cloud via Azure Blob Storage. Our docker container uses a mounted file system to interact with your Azure Blob Storage account then launches Plex Media Server at <a href="http://localhost:3000/web/index.html">http://localhost:3000/web/index.html</a>. Select add library and choose the mounted folder. 

# Run the Docker server
```docker run --privileged -it -e NAME="[Azure storage account name]" -e KEY="[Azure access key]" -p 3000:32400 ackimball/azure-plex ```

[![](https://images.microbadger.com/badges/image/ackimball/azure-plex.svg)](https://microbadger.com/images/ackimball/azure-plex "Get your own image badge on microbadger.com")

# Tips
Be sure to store your movies and shows on Azure based on the  <a href="https://support.plex.tv/hc/en-us/categories/200028098">Plex Media Guidelines</a>.
