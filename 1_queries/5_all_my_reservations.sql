SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(rating) as average_rating
  FROM reservations
  JOIN properties ON properties.id = property_id
  JOIN property_reviews ON reservations.id = reservation_id
  WHERE reservations.guest_id = 9
  GROUP BY properties.id, reservations.id
  ORDER BY reservations.start_date
  LIMIT 10
  ;