'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "7febf97619393b99888986bb3de8f527",
"assets/AssetManifest.bin.json": "3b0657d44cee6e06828366ae79761037",
"assets/AssetManifest.json": "3522dbfd0b71109a2e2376f6a136c107",
"assets/assets/fonts/AdventPro_Expanded-Regular.ttf": "4f74a0ecf2223f21b9ddbbdfc4beb494",
"assets/assets/fonts/montserrat.regular.ttf": "07689d4eaaa3d530d58826b5d7f84735",
"assets/assets/fonts/OpenSans-Regular.ttf": "629a55a7e793da068dc580d184cc0e31",
"assets/assets/fonts/raleway.regular.ttf": "6e4a9679e65cc320746c3e5d48e51f28",
"assets/assets/fonts/soyombo.ttf": "66674ba667d0991a3998f7bd80c11c08",
"assets/assets/images/andrid.svg": "5a63cacf11a6994ed01c25c23fe12ed9",
"assets/assets/images/arrow.svg": "37e821f7a05aeec700c6f5c5f126d111",
"assets/assets/images/background.png": "e28492d290bb54b4f4ace4935b849a7f",
"assets/assets/images/background.svg": "d652a85a27ca27cf370b7c931fed442b",
"assets/assets/images/blackrectangl.png": "9ac59e7e908b691f234e573cd7ef7d13",
"assets/assets/images/body.png": "b00af20cdeed5d243ade98edf58342b3",
"assets/assets/images/bookelyapp.png": "ff36e2391089bf0ac2bddd781a77fdd4",
"assets/assets/images/chatapp.png": "1e64909176e1fa983b61d54e57e5aab5",
"assets/assets/images/customfacebook.svg": "81bf79e7b83ffd4ee3a50b0274db61ca",
"assets/assets/images/customlikedin.svg": "2413cad0d92cf85be124b46ede9477de",
"assets/assets/images/custommail.svg": "5ea3ad3212c779d66e53e862872691db",
"assets/assets/images/custom_drawer.png": "36ca721b8fe7accd636fe5a296965670",
"assets/assets/images/dart.svg": "b7971cb6664023671869835fda6afc01",
"assets/assets/images/design.png": "c1283271eb03eca8c75a27c3da9253a9",
"assets/assets/images/development.png": "7ef98d4335ddffbe88cd886e46c132ee",
"assets/assets/images/drawer.svg": "44d85e0195fca4c48bcb00b4c95eb1be",
"assets/assets/images/Exit.svg": "6cb16967057ba7decc3d2bc27ba2beb9",
"assets/assets/images/facbook.svg": "81bf79e7b83ffd4ee3a50b0274db61ca",
"assets/assets/images/final.png": "2f073836ee4b346002e527a689ec431d",
"assets/assets/images/finalmobile.png": "295229e4955c7822842a4f02608175de",
"assets/assets/images/FINALPAGROUND.png": "9fe8a9f60cf0a3c9e1f5a866328a3916",
"assets/assets/images/firebas.svg": "8e09fe510dfd2abb40f1be63faa4e7cc",
"assets/assets/images/firebase.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/images/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/images/flutterlogo.png": "2ce3890e9460ccaa9e0f05fbc79a34bd",
"assets/assets/images/gethup.png": "c0c2f989253168298f5066b0c1c95308",
"assets/assets/images/git.svg": "2419e98ca08d6783bd5d23eacad1cd02",
"assets/assets/images/githup.svg": "59fbecd19ca38cb47dd189e6ad0e9b83",
"assets/assets/images/hghdkd.png": "6779dccae7eeaf83a38ea064f3816546",
"assets/assets/images/ibmapp.png": "66863d89fbb01d5b8766140c059b96af",
"assets/assets/images/image%252017.svg": "348478897db29d8b38d4fdc43afad98d",
"assets/assets/images/itfordesktop.svg": "046b6fd262054c15517167427812944a",
"assets/assets/images/kotlin.svg": "a7735a82bb1788b6356ba6f03f8ebfc3",
"assets/assets/images/linkedin.png": "b527ba11b68b9488157fd5d5dbac4552",
"assets/assets/images/linkedin.svg": "2413cad0d92cf85be124b46ede9477de",
"assets/assets/images/linkedinu.png": "6f683046fa5ff46a18775f4d3cf86110",
"assets/assets/images/linkedinu.svg": "62a2275238e20032c4641975fbfb13c6",
"assets/assets/images/mail.png": "d366de341ed01cc54f4f2ca432cac3d7",
"assets/assets/images/mail.svg": "5ea3ad3212c779d66e53e862872691db",
"assets/assets/images/mailu.svg": "0154548e109feacd8bbf44c50c6a656c",
"assets/assets/images/mantinace.png": "11ffba55682d540dc79265b589ed4066",
"assets/assets/images/mysql.svg": "44a440678c878fd4378633dc164f1ef5",
"assets/assets/images/portfoliobackground.png": "150469e977dec405e31d49cc680a0b23",
"assets/assets/images/portfoliobackground.svg": "2b65c6ff147193572c03e11f39f8951a",
"assets/assets/images/Rectangle.png": "f24f2ee055d1bf50764055dab9d79694",
"assets/assets/images/rest-api.svg": "0db05f56fa27aecdb950f28a2a0f0d98",
"assets/assets/images/separatorBlack.png": "6e6d3b7642eac1e0cca7fa630c9b3ab8",
"assets/assets/images/separatorWhite.png": "2ef9a4e0200225bc81818f664e363cf0",
"assets/assets/images/Vector.svg": "b507026520163f29ed8afc10bcd3d9ab",
"assets/assets/images/waterapp.png": "f99b2b50959fff1a21c838266663482c",
"assets/FontManifest.json": "55d84f6d1d93eae451088df4f68cf199",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "1ab65498296acb7d6e4ed10e603757dd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "dc2a21d89059c1ee9aa37f8772b1b062",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b3a089ab9fe29e08ea852386308c661d",
"/": "b3a089ab9fe29e08ea852386308c661d",
"main.dart.js": "ba5a3c8a7cd4d271cc821250b2363f03",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
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
