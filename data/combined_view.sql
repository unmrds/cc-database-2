-- Create a combined view of the three tables
-- CREATE VIEW combined AS
SELECT surveys.*, plots.plot_type, species.genus, species.species, species.taxa
FROM surveys
INNER JOIN plots ON surveys.plot_id = plots.plot_id
INNER JOIN species ON surveys.species_id = species.species_id