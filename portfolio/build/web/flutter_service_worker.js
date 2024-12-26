'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "adaa4a801823a9d0b43ff212ec09ca4f",
"assets/AssetManifest.bin.json": "075a8ddd6898868fb93036ddf6a72000",
"assets/AssetManifest.json": "fdbc1ed2f491106aa56d93f3e87cafa5",
"assets/assets/chefs_recipes.png": "f3c11c02d77dfff938e2832a708132bc",
"assets/assets/dart.png": "cfb2617d7c498a7f8dfd927f851ee03e",
"assets/assets/expense_tracker.png": "8b572f896462d4963dd7cdb655bbd8d3",
"assets/assets/firebase.png": "06a3ee3ee8482600268ce83e52f8b1ef",
"assets/assets/flutter.png": "280061a25e491cd2ab4a6ffd889bc66c",
"assets/assets/git.png": "117fee248d4073fbb9ef979d6a1e6d09",
"assets/assets/java.png": "9fca5afeec7bb94c94f4226bcdbd6c70",
"assets/assets/kiosk_app.png": "94dd8d7862d6344a769403f4d446ddeb",
"assets/assets/loading.png": "2feee83bce9821a0a329cd494bb20f82",
"assets/assets/nodejs.png": "5af599c53b6823a75c29b2ca88bd351f",
"assets/assets/react.png": "fcaaa36a86c3ce6edb1611cd50fae4f5",
"assets/assets/splash.gif": "ca73f4c78e47ed4d5aa8d15723c45377",
"assets/assets/yashvardhan.png": "e81117939e905e7a32834cf658ef959c",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "de9026564b2a6aef79874f6b6b066b0d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "edb06e69f55272d1bffb61d3dfbc0868",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "56f420183d78ca2daca93956c94de00d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "6fda0158fac14474e08e1dfc26318887",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "5442a5545195f289faf810465707551d",
"icons/android-chrome-192x192.png": "6fda0158fac14474e08e1dfc26318887",
"icons/android-chrome-512x512.png": "3d610953302034afe012f4c3153af986",
"icons/apple-touch-icon.png": "134a82652cfae9248a35e0e3247cfebe",
"icons/favicon-16x16.png": "846aa4d0b7ba409827eda1039fb06e62",
"icons/favicon-32x32.png": "cd7379c427f390a800b05a1605ce5db7",
"icons/favicon.ico": "457b49854b8360a33188edf9e5080bbe",
"icons/site.webmanifest": "053100cb84a50d2ae7f5492f7dd7f25e",
"index.html": "863b33f5b09660eedc6fe8266e10222f",
"/": "863b33f5b09660eedc6fe8266e10222f",
"main.dart.js": "fecc8bdaa353aa7201fc2955bee63929",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"splash/img/dark-1x.gif": "6538838d568140affae81c59f3769b77",
"splash/img/dark-1x.png": "441ebd6e7a62aaa8f3ff0258689d33a8",
"splash/img/dark-2x.gif": "281d552ccd615cce84143a63a5265069",
"splash/img/dark-2x.png": "1bcce8bf8587608a314f1cd60fcacd3a",
"splash/img/dark-3x.gif": "de12e2d50d11f7dd0a5c27ac8ea580f7",
"splash/img/dark-3x.png": "3eccc7e8fd483ffac58081cee3eea440",
"splash/img/dark-4x.gif": "43a2e8475f56f4a6b1b9a525ee587f57",
"splash/img/dark-4x.png": "e019c363a85ce1bec7bbd05da7c1a5d7",
"splash/img/light-1x.gif": "6538838d568140affae81c59f3769b77",
"splash/img/light-1x.png": "441ebd6e7a62aaa8f3ff0258689d33a8",
"splash/img/light-2x.gif": "281d552ccd615cce84143a63a5265069",
"splash/img/light-2x.png": "1bcce8bf8587608a314f1cd60fcacd3a",
"splash/img/light-3x.gif": "de12e2d50d11f7dd0a5c27ac8ea580f7",
"splash/img/light-3x.png": "3eccc7e8fd483ffac58081cee3eea440",
"splash/img/light-4x.gif": "43a2e8475f56f4a6b1b9a525ee587f57",
"splash/img/light-4x.png": "e019c363a85ce1bec7bbd05da7c1a5d7",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
