FROM nginx:1.31.8@sha256:165ddde8751e75a1c907d24ef10d9f6deb08b57e0fe56caf67512486aff76d82

# The base image lags Debian's security fixes, and the image scan refuses a
# fixable High. APP_COMMIT, which the release sets, changes on every build, and
# BuildKit keys a RUN on the build arguments in scope, so a layer cache can't
# freeze this layer and keep a fixed CVE out.
ARG APP_COMMIT=unknown
RUN apt-get update \
    && apt-get upgrade -y --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY javascript.js /usr/share/nginx/html/javascript.js
COPY styles.css /usr/share/nginx/html/styles.css
