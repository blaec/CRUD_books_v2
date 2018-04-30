USE sql_books;

DROP TABLE IF EXISTS tblbook;

CREATE TABLE tblbooks (
  id            INT(11)         NOT NULL AUTO_INCREMENT,
  title         VARCHAR(255)    NOT NULL,
  description   VARCHAR(255)    NOT NULL,
  author        VARCHAR(100)    NOT NULL,
  isbn          VARCHAR(20)     NOT NULL,
  printYear     INT(11)         NOT NULL,
  readAlready   TINYINT(1)      NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
)
ENGINE = INNODB
AVG_ROW_LENGTH = 8192
CHARACTER SET utf8
COLLATE utf8_general_ci
ROW_FORMAT = DYNAMIC;


INSERT INTO tblbooks (title, description, author, isbn, printYear, readAlready) VALUES
  ('Confronting Genocide', 'Description_1', 'Provost', '978-94-007-3986-4', 2011, false),
  ('Prospects of Legal Semiotics', 'Description_2', 'Wagner', '978-94-007-3985-7', 2011, false),
  ('3rd School and Workshop on Space Plasma Physics', 'Description_3', 'Zhelyazkov', '978-0-7354-0914-9', 2011, false),
  ('Resource-Aware Data Fusion Algorithms for Wireless Sensor Networks', 'Description_4', 'Abdelgawad', '978-1-4614-1349-3', 2012, false),
  ('Mining Text Data', 'Description_5', 'Aggarwal', '978-1-4614-3222-7', 2012, false),
  ('Interfacial Fluid Mechanics', 'Description_6', 'Ajaev', '978-1-4614-1340-0', 2012, false),
  ('Chemistry of Nanocontainers', 'Description_7', 'Albrecht', '978-3-642-28058-0', 2012, false),
  ('Sol-Gel Processing for Conventional and Alternative Energy', 'Description_8', 'Aparicio', '978-1-4614-1956-3', 2012, false),
  ('Algebraic Geometry over the Complex Numbers', 'Description_9', 'Arapura', '978-1-4614-1808-5', 2012, false),
  ('Electromagnetic Processing of Materials', 'Description_10', 'Asai', '978-94-007-2644-4', 2012, false),
  ('Spherical Harmonics and Approximations on the Unit Sphere: An Introduction', 'Description_11', 'Atkinson', '978-3-642-25982-1', 2012, false),
  ('Noncovalent Functionalization of Carbon Nanotubes', 'Description_12', 'Backes', '978-3-642-27581-4', 2012, false),
  ('Fruit Breeding', 'Description_13', 'Badenes', '978-1-4419-0762-2', 2012, false),
  ('Recommender Systems for Social Tagging Systems', 'Description_14', 'Balby Marinho', '978-1-4614-1893-1', 2012, false),
  ('Recent Progress in Operator Theory and Its Applications', 'Description_15', 'Ball', '978-3-0348-0345-8', 2012, false),
  ('Physics of Nanostructured Solid State Devices', 'Description_16', 'Bandyopadhyay', '978-1-4614-1140-6', 2012, false),
  ('Myeloproliferative Neoplasms', 'Description_17', 'Barbui', '978-3-642-24988-4', 2012, false),
  ('Narrative Soundings: An Anthology of Narrative Inquiry in Music Education', 'Description_18', 'Barrett', '978-94-007-0698-9', 2012, false),
  ('Sensory Perception', 'Description_19', 'Barth', '978-3-211-99750-5', 2012, false),
  ('Machine Vision Handbook', 'Description_20', 'Batchelor', '978-1-84996-168-4', 2012, false),
  ('Machine Vision Handbook', 'Description_21', 'Batchelor', '978-1-84996-169-1', 2012, false),
  ('Power Theories for Improved Power Quality', 'Description_22', 'Benysek', '978-1-4471-2785-7', 2012, false),
  ('Geospatial Free and Open Source Software in the 21st Century', 'Description_24', 'Bocher', '978-3-642-10594-4', 2012, false),
  ('Clinical Cardiac MRI', 'Description_25', 'Bogaert', '978-3-642-23034-9', 2012, false),
  ('Technologies and Innovations for Development', 'Description_26', 'Bolay', '978-2-8178-0267-1', 2012, false),
  ('Feminism and Migration', 'Description_27', 'Bonifacio', '978-94-007-2830-1', 2012, false),
  ('Human-Environment Relations', 'Description_28', 'Brady', '978-94-007-2824-0', 2012, false),
  ('Host-Fungus Interactions', 'Description_29', 'Brand', '978-1-61779-538-1', 2012, false),
  ('Contemporary Coloproctology', 'Description_30', 'Brown', '978-0-85729-888-1', 2012, false),
  ('Stochastic Reachability Analysis of Hybrid Systems', 'Description_31', 'Bujorianu', '978-1-4471-2794-9', 2012, false),
  ('Tutorials in Endovascular Neurosurgery and Interventional Neuroradiology', 'Description_32', 'Byrne', '978-3-642-19153-4', 2012, false),
  ('The Manual of Dermatology', 'Description_33', 'Cafardi', '978-1-4614-0937-3', 2012, false),
  ('Unemployment and Inflation in Economic Crises', 'Description_35', 'Carlberg', '978-3-642-28017-7', 2012, false),
  ('Advances in Real-Time Systems', 'Description_36', 'Chakraborty', '978-3-642-24348-6', 2012, false),
  ('Computational Intelligence Techniques for New Product Design', 'Description_37', 'Chan', '978-3-642-27475-6', 2012, false),
  ('Soft Computing Methods for Microwave and Millimeter-Wave Design Problems', 'Description_38', 'Chauhan', '978-3-642-25562-5', 2012, false),
  ('Handbook of Climate Change Mitigation', 'Description_39', 'Chen', '978-1-4419-7992-6', 2012, false),
  ('Linked Data in Linguistics', 'Description_40', 'Chiarcos', '978-3-642-28248-5', 2012, false),
  ('Handbook of Research on Student Engagement', 'Description_41', 'Christenson', '978-1-4614-2017-0', 2012, false),
  ('Nano-Antimicrobials', 'Description_42', 'Cioffi', '978-3-642-24427-8', 2012, false),
  ('Statistics Applied to Clinical Studies', 'Description_43', 'Cleophas', '978-94-007-2862-2', 2012, false),
  ('Coherent States and Applications in Mathematical Physics', 'Description_44', 'Combescure', '978-94-007-0195-3', 2012, false),
  ('Symmetries and Group Theory in Particle Physics', 'Description_45', 'Costa', '978-3-642-15481-2', 2012, false),
  ('Probability and Social Science', 'Description_46', 'Courgeau', '978-94-007-2878-3', 2012, false),
  ('Difference Gel Electrophoresis (DIGE)', 'Description_47', 'Cramer', '978-1-61779-572-5', 2012, false),
  ('Rudolf Carnap and the Legacy of Logical Empiricism', 'Description_48', 'Creath', '978-94-007-3928-4', 2012, false),
  ('Next Generation of Photovoltaics', 'Description_49', 'Cristуbal Lуpez', '978-3-642-23368-5', 2012, false),
  ('Reliable Knowledge Discovery', 'Description_50', 'Dai', '978-1-4614-1902-0', 2012, false),
  ('Social Foundations of Human Space Exploration', 'Description_51', 'Dator', '978-1-4614-3093-3', 2012, false);
