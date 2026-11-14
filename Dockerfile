FROM lscr.io/linuxserver/firefox:latest

RUN mkdir -p /defaults && \
    echo 'user_pref("dom.ipc.processCount", 1);' >> /defaults/user.js && \
    echo 'user_pref("browser.cache.disk.enable", false);' >> /defaults/user.js && \
    echo 'user_pref("browser.cache.memory.capacity", 65536);' >> /defaults/user.js
