// $(function() {
//   $("form").("submit", function(e){
//     e.preventDefualt();
//     // prepare request
//     var request =gapi.client.youtube.search.list(({
//       part: "snippet",
//       type: "video";
//       q: encodeURIComponent($("#search").val()).replace(/\20/g, "+"),
//       order: "viewCount",
//     });
//     request.execute(function(response) {
//       console.log(response)
//     })
//   });
// });

// function init() {
//   gapi.client.setApiKey(GOOGLE_API);
//   gapi.client.load("youtube", "v3", function(){
//     //api is ready
//   });
// }
