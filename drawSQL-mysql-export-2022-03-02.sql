CREATE TABLE `commande`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `adresse` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `commande` ADD PRIMARY KEY `commande_id_primary`(`id`);
CREATE TABLE `client`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(255) NOT NULL,
    `prenom` VARCHAR(255) NOT NULL,
    `adresse` VARCHAR(255) NOT NULL,
    `mobile` INT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `client` ADD PRIMARY KEY `client_id_primary`(`id`);
CREATE TABLE `produits`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `nameProduit` CHAR(255) NOT NULL,
    `description` CHAR(255) NOT NULL,
    `prix` DOUBLE NOT NULL,
    `quantiteDeStock` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `produits` ADD PRIMARY KEY `produits_id_primary`(`id`);
CREATE TABLE `detailQuantite`(
    `quantiteCommande` INT UNSIGNED NOT NULL AUTO_INCREMENT
);
ALTER TABLE
    `detailQuantite` ADD CONSTRAINT `detailquantite_quantitecommande_foreign` FOREIGN KEY(`quantiteCommande`) REFERENCES `commande`(`id`);
ALTER TABLE
    `detailQuantite` ADD CONSTRAINT `detailquantite_quantitecommande_foreign` FOREIGN KEY(`quantiteCommande`) REFERENCES `produits`(`id`);