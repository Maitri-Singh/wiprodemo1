fetch("https://jsonplaceholder.typicode.com/users") // Fetch data from API
  .then(response => response.json()) // Convert response to JSON
  .then(data => console.log(data)) // Log data to the console
  .catch(error => console.error("Error fetching data:", error)); // Handle errors
