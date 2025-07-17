// Recommend movies based on similar user interests
MATCH (u1:User {name: 'Abhishek'})-[:WATCHED]->(m1)<-[:WATCHED]-(u2),
      (u2)-[:WATCHED]->(m2)
WHERE NOT (u1)-[:WATCHED]->(m2)
RETURN DISTINCT m2.title AS Recommended;
