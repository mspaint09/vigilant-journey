
function updateClient(client, num, type) { client[type] = num; }

var client = { firstName: "Bob", lastname: "Rogers" } ;
updateClient(client, "777-555-3333", "Mobile");
for(var key in client) { console.log(key + " - " + client[key]); }
