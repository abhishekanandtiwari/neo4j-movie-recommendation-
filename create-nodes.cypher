// Create Movie Nodes
LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row
CREATE (:Movie {title: row.title, genre: row.genre, rating: toFloat(row.rating)});

// Create User Nodes
CREATE (:User {name: 'Abhishek'}),
       (:User {name: 'Anjali'}),
       (:User {name: 'Rahul'});
