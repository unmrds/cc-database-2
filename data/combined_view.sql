-- Create a combined view of the three tables
-- CREATE VIEW combined AS
SELECT surveys.*, species.genus, species.species, species.taxa, plots.plot_type
FROM surveys
INNER JOIN species ON surveys.species_id = species.species_id
INNER JOIN plots ON surveys.plot_id = plots.plot_id
