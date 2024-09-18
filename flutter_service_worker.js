'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"manifest.json": "bbaffa56ddfec1606fce906473c5ff77",
"flutter_bootstrap.js": "f6549c32059921539f0e23f264fbdd61",
"main.dart.js": "bee535979713f648f05a18e2dcf1d352",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "5a3f0342f085f8bbfc52c89862d61e1c",
"/": "5a3f0342f085f8bbfc52c89862d61e1c",
"assets/AssetManifest.bin.json": "f9744028487668658ece31bf182b9b93",
"assets/AssetManifest.json": "20ac00a600d8d3e64bdf14734abf0208",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin": "5e767591903a6ef5e393ad267301bc4d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "09eb4f802dc6d6b0e4e9028b5cd4ac12",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/images/feature_icons/05.png": "ecffeb698c512f4506dbf4c9b106e5db",
"assets/assets/images/feature_icons/03.png": "be623f25ee3740ff6be04c2ee1d9f321",
"assets/assets/images/feature_icons/06.png": "4aec800e1e736dc2b2f2cd8ea052b1ae",
"assets/assets/images/feature_icons/04.png": "bd7c1c600daae5ad1e58a8d5a9b1764a",
"assets/assets/images/feature_icons/01.png": "6c6311c2d27530d3a69e68667c227444",
"assets/assets/images/feature_icons/02.png": "20968e4b13c5aa42ab194c5d98dbec3d",
"assets/assets/images/feature_icons/07.png": "f816798404449cf027a3b365ced3643b",
"assets/assets/images/identity.png": "d06eb3d30d1c09241f1c14c4f2805d8a",
"assets/assets/images/microsoft_logo.png": "952a51d611cac8582b6f8c35c68cc311",
"assets/assets/images/phone_mockup.png": "fec52807c79e4ea6e6095d8731e51210",
"assets/assets/images/quote_mark.png": "77222515b645fc41b3244c98f43445ff",
"assets/assets/images/cover_img.png": "35d077f20fda4729190f43eb56dc42a5",
"assets/assets/images/checkplant.png": "f778ba55197b04eca2e02da63978d93d",
"assets/assets/images/fungicides.png": "76cca87b1fa8f1720229cc07040d39e8",
"assets/assets/images/diagnos_plant.png": "8148acef4116cb89361de27bb654693d",
"assets/assets/images/plant_diases.png": "bc7fc9f85fc8aeffa93bb1d71440f17d",
"assets/assets/images/google_play.png": "b825d7db06064b64109c278edfb2ab12",
"assets/assets/images/tomat2.png": "090b6039abca9aa445ad03a235a02c0d",
"assets/assets/images/demoSnapshot.png": "11a584926f7ef3ddfaa931055f84c2f2",
"assets/assets/images/walmart_logo.png": "97a5799e698092f68892f110e8132e29",
"assets/assets/images/right_arrow.png": "8c17c1b450a90184a58a9d4f9ada73b4",
"assets/assets/images/tomat3.png": "20e6a54b35afdfc18bd8239133d8135a",
"assets/assets/images/hubspot_logo.png": "4a4e85f1e682407980bdb9c6db0b5fda",
"assets/assets/images/bookmyshow_logo.png": "28a6ced46b99d56280c71cea58c1e6a4",
"assets/assets/images/google_logo.png": "df071bec17de3d0929681ef7fd0357ca",
"assets/assets/images/photodisease3.png": "d2d26a8494092d0754f21f130d565c75",
"assets/assets/images/tomat1.png": "46bc54fe5365ec397a84608c9e18192f",
"assets/assets/images/fedex_logo.png": "bdf2d1c2a1be0a7436a09df6135bf12b",
"assets/assets/images/bg.png": "0264de1bd129967fbace17edc9604107",
"assets/assets/images/logo2.png": "f8f6d902f1e13e05dd387d822684bea4",
"assets/assets/images/profile.png": "4c6e31b52778935ca8a2b9dbe6563316",
"assets/assets/images/app_store.png": "d5e8445e5167025d7b3826aa9f7b07d2",
"assets/assets/images/tomat4.png": "b267772c8ca3b970d6f3bd0e0849b177",
"assets/assets/images/phone_mockup_2.png": "1a548811331568b2b1a99335c0fcf429",
"assets/assets/images/logo.png": "2b70f30dba41bb17c192988774eac009",
"assets/assets/images/airbnb_logo.png": "9817e31a10bda862091f2c2f42963103",
"version.json": "3632cab188aaad39dec706264de019b0",
"flutter.js": "f393d3c16b631f36852323de8e583132"};
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
