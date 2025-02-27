export function urlPath(applicationPath, tenant) {
    return `/${tenant}${applicationPath}`;
}
export function buildUrl(applicationPath, tenant, request) {
    return new URL(urlPath(applicationPath, tenant), request.url);
}

export function getHostnameAndPort(request) {
    const hostnameWithPort = request.headers.get("host");
    const [realHostname, port] = hostnameWithPort.split(":");

    let hostname;
    if (process.env.OVERRIDE_TENANT_DOMAIN) {
        hostname = process.env.OVERRIDE_TENANT_DOMAIN;
    } else {
        hostname = realHostname;
    }

    return [hostname, port];
}