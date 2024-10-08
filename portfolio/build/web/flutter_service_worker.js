'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "5ac6954baf593f220aee2922921b683c",
"assets/AssetManifest.bin.json": "d3f66781081bee72662dc631abc3eb09",
"assets/AssetManifest.json": "ff99c99400c68478a43fe49194a20282",
"assets/assets/chefs_recipes.png": "cfb2617d7c498a7f8dfd927f851ee03e",
"assets/assets/dart.png": "cfb2617d7c498a7f8dfd927f851ee03e",
"assets/assets/expense_tracker.png": "cfb2617d7c498a7f8dfd927f851ee03e",
"assets/assets/firebase.png": "06a3ee3ee8482600268ce83e52f8b1ef",
"assets/assets/flutter.png": "280061a25e491cd2ab4a6ffd889bc66c",
"assets/assets/git.png": "117fee248d4073fbb9ef979d6a1e6d09",
"assets/assets/java.png": "9fca5afeec7bb94c94f4226bcdbd6c70",
"assets/assets/kiosk_app.png": "cfb2617d7c498a7f8dfd927f851ee03e",
"assets/assets/loading.png": "2feee83bce9821a0a329cd494bb20f82",
"assets/assets/nodejs.png": "5af599c53b6823a75c29b2ca88bd351f",
"assets/assets/splash.gif": "ca73f4c78e47ed4d5aa8d15723c45377",
"assets/assets/yashvardhan.jpg": "4abfbac610267817de67732c9b6cfa0b",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "e0ad06c42c2c832a7813fb390c817b5d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "edb06e69f55272d1bffb61d3dfbc0868",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "56f420183d78ca2daca93956c94de00d",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "6fda0158fac14474e08e1dfc26318887",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "e4c22136dfb3a80e442792a2193ac37c",
"icons/android-chrome-192x192.png": "6fda0158fac14474e08e1dfc26318887",
"icons/android-chrome-512x512.png": "3d610953302034afe012f4c3153af986",
"icons/apple-touch-icon.png": "134a82652cfae9248a35e0e3247cfebe",
"icons/favicon-16x16.png": "846aa4d0b7ba409827eda1039fb06e62",
"icons/favicon-32x32.png": "cd7379c427f390a800b05a1605ce5db7",
"icons/favicon.ico": "457b49854b8360a33188edf9e5080bbe",
"icons/site.webmanifest": "053100cb84a50d2ae7f5492f7dd7f25e",
"index.html": "863b33f5b09660eedc6fe8266e10222f",
"/": "863b33f5b09660eedc6fe8266e10222f",
"main.dart.js": "d0064d2bfb527c22e1b2eef23ddc263f",
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
