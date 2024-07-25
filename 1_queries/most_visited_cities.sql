SELECT properties.city, COUNT(reservations.id) AS total_reservations
FROM reservations
JOIN properties ON reservations.property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;