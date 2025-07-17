// Create WATCHED relationships
MATCH (m:Movie), (u:User)
WHERE m.title = 'The Matrix' AND u.name = 'Abhishek'
CREATE (u)-[:WATCHED]->(m);

MATCH (m:Movie), (u:User)
WHERE m.title = 'The Dark Knight' AND u.name = 'Anjali'
CREATE (u)-[:WATCHED]->(m);
