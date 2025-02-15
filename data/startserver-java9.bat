rem don't forget to accept the EULA or it won't boot
chcp 65001
java -Xms6G -Xmx9G -Dfml.readTimeout=180 @java9args.txt -jar lwjgl3ify-forgePatches.jar nogui
