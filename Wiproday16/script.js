document.getElementById("fetchUser").addEventListener("click", function () {
    fetch("https://randomuser.me/api/")
        .then(response => response.json())
        .then(data => {
            let user = data.results[0];
            document.getElementById("user-info").innerHTML = `
                <h2>${user.name.first} ${user.name.last}</h2>
                <p>Email: ${user.email}</p>
                <img src="${user.picture.large}" alt="User Picture">
            `;
        })
        .catch(error => console.error("Error fetching user:", error));
});
