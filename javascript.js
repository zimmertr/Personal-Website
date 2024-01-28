document.addEventListener("DOMContentLoaded", function () {
  const enableBanner = true;

  if (enableBanner) {
    const banner = document.createElement("div");
    banner.className = "canary-banner";
    banner.innerText = "Canary";
    document.body.insertBefore(banner, document.body.firstChild);
  }
});
