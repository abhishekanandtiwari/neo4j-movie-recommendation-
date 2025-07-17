# 🎬 Neo4j Movie Recommendation Graph

This project demonstrates a simple graph database using Neo4j for movie recommendations.

## 📌 Features

- Stores users and movies as graph nodes
- Links users to the movies they watched
- Recommends movies based on other users with similar interests

## 📊 Tech Stack

- Neo4j Aura Free
- Cypher query language
- CSV data import

## 🧪 Example Queries

```cypher
// Create Movie Nodes
LOAD CSV WITH HEADERS FROM 'file:///movies.csv' AS row
CREATE (:Movie {title: row.title, genre: row.genre, rating: toFloat(row.rating)});
```

```cypher
// Recommend movies
MATCH (u1:User {name: 'Abhishek'})-[:WATCHED]->(m1)<-[:WATCHED]-(u2),
      (u2)-[:WATCHED]->(m2)
WHERE NOT (u1)-[:WATCHED]->(m2)
RETURN DISTINCT m2.title AS Recommended;
```

## 📸 Screenshots
*(Optional — you can upload screenshots of your Neo4j browser view)*

## 📂 Folder Structure

```
data/
  └── movies.csv
queries/
  ├── create-nodes.cypher
  ├── create-relationships.cypher
  └── recommendations.cypher
```

---

## ✍️ Author

Abhishek Anand Tiwari  
B.Tech CSE | Web Developer | Neo4j Enthusiast
