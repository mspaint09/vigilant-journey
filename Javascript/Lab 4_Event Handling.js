var arr = ["center.jpg", "IslandOasis.jpg", "LakeShore.jpg", "MountainView.jpg", "NewHaven.jpg", "SanDiego.jpg"];
var idx = 0;
document.getElementById("right").addEventListener("click", function() {
 if(idx === (arr.length - 1)) { return; }
 idx++;
 document.getElementById("center").setAttribute("src", arr[idx]);
});
document.getElementById("left").addEventListener("click", function() {
 if(idx === 0) { return; }
 idx--;
 document.getElementById("center").setAttribute("src", arr[idx]);
});