-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 19, 2022 at 03:49 AM
-- Server version: 10.6.7-MariaDB-1:10.6.7+maria~focal
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LDVELH`
--

-- --------------------------------------------------------

--
-- Table structure for table `arme`
--

CREATE TABLE `arme` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arme`
--

INSERT INTO `arme` (`id`, `nom`) VALUES
(1, 'Le Poignard'),
(2, 'La Lance'),
(3, 'La Masse D\'Armes'),
(4, 'Le Sabre'),
(5, 'Le Marteau De Guerre'),
(6, 'L\'Épée'),
(7, 'La Hache'),
(8, 'L\'Épée Longue'),
(9, 'Le Baton'),
(10, 'Le Glaive');

-- --------------------------------------------------------

--
-- Table structure for table `chapitre`
--

CREATE TABLE `chapitre` (
  `id` int(11) NOT NULL,
  `no_chapitre` varchar(255) DEFAULT NULL,
  `texte` text DEFAULT NULL,
  `livre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapitre`
--

INSERT INTO `chapitre` (`id`, `no_chapitre`, `texte`, `livre_id`) VALUES
(1, 'Avertir le roi', 'Au nord du royaume du Sommerlund, il est de tradition depuis des siècles d\'envoyer les fils des Seigneurs de la Guerre au monastère Kaï. C\'est là qu\'on leur enseigne l\'art et la science de leurs nobles ancêtres. Les Moines Kaï sont de grands maîtres dans l\'art qu\'ils enseignent. Pour transmettre leurs connaissances, ils doivent faire subir à leurs disciples de rudes épreuves au cours de leur apprentissage, mais ces derniers ne s\'en plaignent jamais. Ils leur témoignent au contraire amour et respect, sachant très bien qu\'ils quitteront un jour le monastère en possédant tous les secrets de la tradition Kaï: ils pourront alors rentrer chez eux, l\'esprit et le corps formés aux techniques de la guerre. Profondément attachés à leur patrie, ils seront ainsi prêts à la défendre contre le danger constant qui la menace : la soif de conquête des Maîtres des Ténèbres venus de l\'ouest. Au temps jadis, à l\'époque de la Lune Noire, les Maîtres des Ténèbres menèrent une guerre sans merci contre le royaume du Sommerlund. Ce fut une longue et douloureuse épreuve de force à l\'issue de laquelle les guerriers du Sommerlund remportèrent la victoire lors de la grande bataille de Maaken. Le roi Ulnar et ses alliés de Durenor anéantirent l\'armée des Maîtres des Ténèbres dans le défilé de Moytura et précipitèrent l\'ennemi au fond de la gorge de Maaken. Vashna, le plus puissant parmi les Maîtres des Ténèbres, périt d\'un coup mortel que le roi Ulnar lui porta de sa puissante épée, l\'Epée du Soleil, que l\'on désigne généralement sous le nom de «Glaive de Sommer». Depuis ce temps, les Maîtres des Ténèbres ont juré de prendre leur revanche sur le royaume du Sommerlund et la Maison d\'Ulnar. Lorsque l\'aube se lève sur le premier jour de votre aventure, tous les Seigneurs Kaï sont présents au monastère : on doit, en effet, célébrer aujourd\'hui même la grande fête de Fehmarn et l\'on se prépare tôt le matin aux réjouissances. Mais soudain, un immense nuage noir s\'élève au ciel d\'occident: d\'énormes   créatures aux ailes sombres emplissent les nues en si grand nombre que le soleil semble s\'éteindre. Cette invasion porte la marque des Maîtres des Ténèbres. Les ennemis jurés du Royaume du Sommerlund passent une nouvelle fois à l\'attaque : la guerre a recommencé. En ce matin fatal, Loup Silencieux (c\'est le nom qui vous a été donné par les Moines Kaï) est allé chercher du bois dans la forêt : c\'est la corvée qu\'on vous a assignée pour vous punir de votre inattention en classe. Or, sur le chemin du retour, vous apercevez tout à coup ce gigantesque nuage de créatures noires qui fond sur le monastère et semble l\'engloutir aussitôt. Vous laissez tomber votre bois à terre et vous vous précipitez sur le lieu de la bataille. Mais les monstres noirs ont obscurci le soleil et il fait à présent si sombre que vous trébuchez contre une racine en tombant tête la première. Dans votre chute, vous heurtez violemment du front une branche basse qui vous assomme. Une fraction de seconde avant de perdre connaissance, vous avez cependant le temps de saisir du regard un terrifiant spectacle: les murs du monastère Kaï sont en train de s\'écrouler sur eux-mêmes dans un fracas de tonnerre. Vous ne reprenez conscience qu\'au bout de plusieurs heures et, les larmes aux yeux, vous contemplez avec horreur le tas de ruines que l\'ennemi a laissé derrière lui. Les Guerriers Kaï ont été ensevelis sous les décombres et il ne reste plus aucun survivant parmi vos compagnons. Avec une infinie douleur, vous levez alors votre visage vers le ciel, à nouveau clair, et vous faites le serment de venger la mort des Moines et des Seigneurs Kaï. Vous ferez payer leur crime aux Maîtres des Ténèbres ! Votre tâche d\'ailleurs commence à l\'instant même : il vous faut, en effet, gagner la capitale du royaume pour prévenir le Roi en personne de l\'effroyable péril qui menace le pays ; car maintenant, l\'ennemi est en marche, et si vous n\'agissez pas à temps, votre patrie tombera sous son joug. Vous êtes le dernier des Seigneurs Kaï et le sort de votre peuple repose désormais entre vos seules mains: le Loup Silencieux est devenu Loup Solitaire et les envahisseurs feront tout pour vous empêcher d\'atteindre le Palais du Roi...', 1),
(2, '1', 'Il faut vous hâter, car quelque chose vous dit qu\'il serait imprudent de vous attarder parmi les ruines fumantes du monastère détruit. Les monstres volants peuvent, en effet, reparaître à tout moment. Il n\'y a d\'ailleurs pas de temps à perdre : vous devez au plus vite prendre la route de Holmgard, la capitale du Sommerlund, pour aller annoncer au Roi cette terrible nouvelle : les Guerriers Kaï, l\'élite du pays, ont tous été massacrés, à l\'exception de vous-même. Or sans l\'autorité et le savoir des Seigneurs Kaï pour commander l\'armée, le royaume du Sommerlund se trouve à la merci de ses plus anciens ennemis: les Maîtres des Ténèbres. En retenant vos larmes à grand-peine, vous dites adieu à vos compagnons morts et vous faites le serment de les venger. Vous tournez alors le dos aux ruines et vous descendez avec précaution le sentier escarpé qui s\'ouvre devant vous. Au pied de la colline, le chemin aboutit à une bifurcation. Là, deux autres sentiers mènent l\'un et l\'autre à une grande forêt en empruntant deux directions différentes. Si vous souhaitez prendre le sentier de droite, rendez-vous au 85 Si vous préférez suivre celui de gauche, rendez-vous au 275 Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au 141.', 1),
(3, '2', 'Tandis que vous courez à perdre haleine dans la forêt qui s\'épaissit, les cris des Gloks s\'évanouissent peu à peu derrière vous. Vous les avez presque semés lorsque vous trébuchez soudain en tombant tête la première dans un enchevêtrement de branches basses. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez entre 0 et 4, rendez-vous au343 Entre 5 et 9, rendez-vous au 276', 1),
(4, '3', 'Vous emboîtez le pas à l\'officier qui franchit une porte en arcade, puis monte quelques marches menant à un grand hall. Des soldats courent en tous sens, porteurs de parchemins ornés qu\'ils doivent remettre à des officiers postés le long des murs de la ville. Un homme au visage couturé de cicatrices, l\'air hagard, s\'approche de vous et vous offre de le suivre jusqu\'à la citadelle. Il porte la toge blanche et pourpre en usage à la cour du Roi. Si vous souhaitez suivre cet homme, rendez-vous au196 Si vous préférez décliner son offre et retourner dans les rues populeuses, rendez-vous au 144', 1),
(5, '4', 'C\'est un petit canoë à une place, en très mauvais état. Des pièces de bois disjointes laissent apparaître des trous en plusieurs endroits de la coque et il vous faut les boucher à la hâte avec de l\'argile. Vous videz ensuite l\'embarcation de son eau et il vous semble alors qu\'elle est en état de flotter. Vous rangez votre équipement à l\'avant du canoë, puis vous descendez le cours de la rivière en pagayant à l\'aide d\'un débris de bois ramassé à la surface de l\'eau. Un instant plus tard, vous entendez des chevaux galoper dans votre direction, le long de la rive gauche. Si vous souhaitez vous cacher au fond du canoë, rendez-vous au75 Si vous préférez au contraire attirer l\'attention des cavaliers, rendez-vous au175 Si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au 218.', 1),
(6, '5', 'Vous avez marché pendant environ une heure lorsque le sentier s\'oriente peu à peu vers l\'est. Vous atteignez bientôt un gué qui traverse un ruisseau coulant vers le sud. Le courant en est rapide et le lit, rocheux et escarpé. Au-delà du gué, le sentier que vous suivez croise un chemin plus large, orienté nord-sud. En allant vers le nord, vous vous éloigneriez de la capitale et vous décidez   donc de prendre à droite, en direction du sud. Rendez-vous au 111.', 1),
(7, '6', 'Vous entendez au loin des chevaux dont le galop se rapproche et vous vous accroupissez derrière un arbre pour voir passer les cavaliers sans être vu. Bientôt, vous reconnaissez l\'uniforme blanc de l\'armée du Sommerlund : ce sont des soldats de la Garde du Roi. Si vous souhaitez les appeler, rendez-vous au183 Si vous préférez les laisser passer et poursuivre votre chemin à travers la forêt, rendez-vous au 200.', 1),
(8, '7', 'Pendant un moment qui vous semble une éternité, le flot de la foule vous entraîne comme une feuille au fil du courant. Vous essayez désespérément de rester debout, mais vos épreuves vous ont affaibli, vous avez le vertige et vos jambes sont lourdes comme du plomb. Soudain, vous apercevez un escalier de pierre, long et étroit, qui mène sur le toit d\'une auberge. Rassemblant vos dernières forces, vous vous frayez un chemin jusqu\'à ces marches que vous grimpez péniblement. Parvenu au sommet, vous contemplez alors une vue magnifique : les toits et les tours de Holmgard s\'étendent sous vos yeux et les hauts murs de pierre de la citadelle resplendissent au soleil. Les maisons et tous les bâtiments de la capitale ont été construits très près les uns des autres et il est tout à fait possible de sauter de toit en toit. Autrefois, les habitants de Holmgard empruntaient volontiers ce « Chemin des Toits » (comme on l\'appelle ici) lorsque de trop fortes pluies rendaient impraticables certaines rues non pavées. Mais les accidents ont été si nombreux qu\'il est désormais interdit, par décret du Roi, de se déplacer ainsi. Dans votre cas, cependant, seul le Chemin des Toits peut vous mener jusqu\'au souverain, et vous décidez donc de vous rendre au palais de cette manière. Après avoir bondi et sauté de maison en maison, vous       parvenez au bout d\'une rangée de toits et il ne vous reste bientôt plus qu\'une seule rue à franchir pour atteindre la citadelle. Cette rue, malheureusement, est plus large que les autres et il vous faudra réussir un bond spectaculaire si vous voulez passer de l\'autre côté. La gorge un peu serrée, le sang battant à vos tempes, vous prenez donc votre élan en courant sur toute la longueur du toit, puis vous vous élancez, le regard fixé sur la maison d\'en face. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 2, rendez-vous au108 Entre 3 et 9, rendez-vous au 25.', 1),
(9, '8', 'Votre Sixième Sens vous avertit qu\'une terrible bataille fait rage dans le sud. Mais votre simple bon sens vous rappelle également que le chemin le plus court pour rejoindre la capitale passe précisément par le sud. Rendez-vous au70 pour établir votre itinéraire.', 1),
(10, '9', 'Vous ne pouvez plus bouger : une force mystérieuse vous immobilise et vos yeux sont attirés par la bouche du squelette. Montant des profondeurs de la terre, vous entendez alors un bourdonnement grave, comme si des millions d\'abeilles en fureur étaient rassemblées là. Puis une lueur rougeâtre s\'allume dans les orbites vides du roi mort et le bourdonnement augmente d\'intensité jusqu\'à devenir assourdissant. Vous êtes en présence d\'une force maléfique plus ancienne et plus puissante encore que celle des Maîtres des Ténèbres. Si vous possédez une Pierre de Vordak, rendez-vous au236 Sinon, rendez-vous au 292', 1),
(11, '10', 'Vous êtes en sueur et vos jambes vous font mal. Un peu plus loin, vous apercevez quelques maisonnettes rassemblées. Si vous souhaitez entrer dans l\'une de ces maisonnettes pour y prendre quelque repos, rendez-vous au115 Si vous préférez poursuivre votre chemin, rendez-vous au 83.', 1),
(12, '11', 'Vous vous dissimulez dans l\'entrée d\'une écurie et vous cachez votre blouse de médecin dans la paille. Il est en effet préférable d\'apparaître comme un Seigneur Kaï que comme un charlatan. Puis, sans perdre une seconde, vous vous dirigez vers l\'Entrée Principale, située de l\'autre côté de la cour. Rendez-vous au139', 1),
(13, '12', 'Le garde du corps vous observe d\'un regard soupçonneux puis vous claque la porte au nez. Vous entendez alors des voix à l\'intérieur de la roulotte, puis, soudain, la porte s\'ouvre à nouveau et un marchand à l\'allure prospère apparaît devant vous. Il exige 10 Couronnes pour prix de votre transport. Si vous avez ces 10 Couronnes et que vous désirez les lui donner, rendez-vous au 262. Si vous n\'avez pas cette somme, ou si vous ne souhaitez pas la lui payer, rendez-vous au247', 1),
(14, '13', 'Le chemin aboutit bientôt à une vaste clairière. En son centre se dresse un arbre plus haut et plus large que les autres. Nichée dans son feuillage, à quelque huit mètres au-dessus du sol, se trouve une grande maison. Aucune échelle ne permet d\'y accéder, mais l\'écorce noueuse de l\'arbre offre de nombreux points d\'appui et il ne doit pas être trop difficile de grimper là-haut. Si vous souhaitez escalader cet arbre pour inspecter la maison, rendez-vous au307 Si vous préférez poursuivre votre chemin, rendez-vous au213', 1),
(15, '14', 'Vous parvenez au sommet d\'une petite colline boisée. De gros rocs y sont disposés les uns à côté des autres, formant un cercle grossier. Soudain, vous entendez un grognement sonore qui s\'élève de derrière un rocher situé à votre gauche. Si vous voulez dégainer votre arme et vous préparer à combattre, rendez-vous   au43 Si vous préférez prendre la fuite en courant le plus vite possible au bas de la colline, rendez-vous au 106.', 1),
(16, '15', 'Vous longez un long tunnel sombre formé par des branches d\'arbres qui s\'entrecroisent au-dessus de votre tête et vous arrivez enfin dans une vaste clairière. En son centre se dresse un socle de pierre sur lequel est posée une épée, rangée dans un fourreau de cuir noir. Un mot manuscrit est attaché à la garde de l\'épée, mais il est écrit dans une langue qui vous est étrangère. Vous pouvez prendre cette épée si vous le désirez en n\'oubliant pas de l\'inscrire sur votre Feuille d\'Aventure. Trois chemins permettent de quitter la clairière : si vous voulez aller à l\'est, rendez-vous au207 A l\'ouest, rendez-vous au201 Au sud, rendez-vous au35', 1),
(17, '16', 'Vous parvenez à détacher l\'un des chevaux de la roulotte. L\'odeur des Loups Maudits et les cris des Gloks qui les chevauchent semblent l\'effrayer, mais vous arrivez malgré tout à le lancer au galop en direction des monstrueuses créatures qui s\'approchent de vous. Les Gloks et leurs montures sataniques ne sont plus qu\'à une cinquantaine de mètres, la lance pointée en avant. Face à face à présent, vous foncez les uns vers les autres. Rendez-vous au192', 1),
(18, '17', 'Vous levez votre arme pour frapper la créature, dont la gueule hérissée de crocs tranchants comme des rasoirs vient de se refermer d\'un claquement sec à quelques centimètres de votre tête. Gêné par le battement de ses ailes, vous avez du mal à vous tenir debout. Réduisez d\'un point votre total d\'HABILETÉ, et combattez ce Kraan. KRAAN HABILETÉ: 16 ENDURANCE: 24   Si vous parvenez à tuer votre adversaire, hâtez-vous de descendre le flanc opposé de la colline afin d\'éviter les Gloks. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez le 0, rendez-vous au53 Si vous tirez 1 ou 2, rendez-vous au274 Si vous tirez entre 3 et 9, rendez-vous au331', 1),
(19, '18', 'Vous êtes réveillé par l\'approche d\'une troupe au lointain. Vous apercevez alors, de l\'autre côté du lac, des silhouettes de Drakkarims vêtus de capes noires et une meute de Loups Maudits chevauchés par leurs habituels cavaliers. Un Kraan apparaît bientôt au-dessus des arbres et atterrit sur le toit de la petite cabane de bois. Il est monté par une créature habillée de rouge. Un instant plus tard, le Kraan prend à nouveau son vol et traverse le lac en s\'approchant de l\'endroit où vous êtes caché. Si vous souhaitez vous enfoncer plus profondément dans la forêt, rendez-vous au239 Si vous maîtrisez la Discipline Kaï du Camouflage, rendez-vous au114 Si vous préférez combattre la créature, rendez-vous au29', 1),
(20, '19', 'Un peu plus loin, à travers les arbres, vous apercevez des buissons de couleur rouge. Ce sont des Brosses à Potence dont les épines écarlates et pointues sont communément appelées des Dents de Sommeil : elles ont en effet la propriété, lorsqu\'on s\'y pique, de provoquer faiblesse et engourdissement. Vous pouvez éviter les Dents de Sommeil en revenant sur le sentier. Rendez-vous alors au272 Vous pouvez au contraire essayer de vous frayer un chemin parmi ces buissons pour pénétrer plus profondément dans la forêt. Rendez-vous dans ce cas au119 Enfin, si vous maîtrisez la Discipline Kaï de l\'Orientation, rendez-vous au69', 1),
(21, '20', 'Il semble que le ou les occupants de la péniche soient partis en toute hâte il y a peu de temps. Les restes d\'un repas à moitié   mangé traînent sur la table ainsi qu\'une tasse de Jala encore chaud. En fouillant un coffre et un petit placard, vous trouvez un Sac à Dos, de la Nourriture (l\'équivalent de 2 Repas) et un Poignard. Si vous souhaitez emporter l\'un ou l\'autre de ces objets (ou tous les trois), n\'oubliez pas de les inscrire sur votre Feuille d\'Aventure. Rendez-vous ensuite au272', 1),
(22, '21', 'Vous avez parcouru trois kilomètres à cheval parmi les arbres touffus lorsque le sol devient soudain marécageux. Utilisez la Table de Hasard pour obtenir un chiffre : Si vous tirez un chiffre inférieur à 5, votre cheval s\'est enfoncé jusqu\'au ventre dans une boue épaisse. Si le chiffre obtenu est égal ou supérieur à 5, vous parvenez à vous éloigner de ce bourbier et vous vous rendez au189 Si votre cheval s\'est enlisé, utilisez à nouveau la Table de Hasard pour tirer un autre chiffre. Si vous obtenez cette fois un chiffre égal ou inférieur à 7, vous vous enfoncez dans la boue jusqu\'aux aisselles. En poussant un ultime hennissement désespéré, votre cheval, quant à lui, disparaît définitivement dans la vase. Si le chiffre que vous avez tiré est supérieur à 7, vous réussissez tant bien que mal à vous hisser sur un sol plus ferme et vous vous rendez au189 Si vous êtes enlisé jusqu\'aux aisselles, voici votre dernière chance ! Tirez un autre chiffre à l\'aide de la Table de Hasard. Si vous obtenez tout autre chiffre que le 9, le marécage vous engloutit définitivement et votre mission s\'achève ici, en même temps que votre vie. Si en revanche vous tirez un 9, rendez-vous au312', 1),
(23, '22', 'D\'un coup d\'épaule, vous bousculez le chef et vous vous enfuyez à toutes jambes le long de la route. Vous entendez aussitôt derrière vous le déclic menaçant d\'une arbalète que l\'on tend. Un frisson vous parcourt l\'échiné et vous saisissez d\'un geste prompt votre Table de Hasard afin de tirer un chiffre. Si vous obtenez entre 0 et 4, rendez-vous au181 Entre 5 et 9, rendez-vous au145', 1),
(24, '23', 'Le couloir aboutit bientôt à une vaste chambre mortuaire dont les murs sont gravés de motifs anciens. Dans le coin opposé, un escalier de pierre mène à une porte immense. De chaque côté des marches, deux chandelles noires diffusent une faible clarté. Vous remarquez alors qu\'aucune cire ne coule le long des chandelles, et tandis que vous vous approchez, vous constatez que leurs flammes ne diffusent aucune chaleur. Soucieux de quitter au plus vite cet endroit sinistre, vous examinez la serrure de la porte. Une broche sculptée semble fermer le panneau, mais un trou de serrure apparaît également. Si vous souhaitez retirer la broche, rendez-vous au 337 Si vous possédez la Discipline Kaï de la Maîtrise Psychique de la Matière, rendez-vous au151 Enfin, si vous avez une Clé d\'Or, rendez-vous au326', 1),
(25, '24', 'Le marchand crie au conducteur de la roulotte de sauter. « On nous attaque ! » s\'exclame-t-il. Puis il se jette au-dehors par une fenêtre circulaire. Si vous souhaitez sauter à votre tour de la roulotte, rendez-vous au234 Si vous préférez essayer d\'attraper les rênes des chevaux pour prendre le contrôle de l\'attelage, rendez-vous au184', 1),
(26, '25', 'Vous atterrissez si brutalement sur l\'autre toit que vous en avez le souffle coupé. La tête vous tourne, et vous restez étendu sur le dos. Au bout d\'une minute environ, vous comprenez enfin que vous avez réussi à passer de l\'autre côté et que vous êtes indemne. Lorsque vous êtes vraiment sûr que tout va bien, vous vous relevez d\'un bond et vous poussez un cri de victoire pour saluer votre adresse et votre audace. Puis vous vous hâtez de gagner le bord opposé du toit où une longue gouttière vous permet de descendre dans la rue. Les hautes portes de fer de la citadelle sont ouvertes et un chariot, tiré par deux grands chevaux, essaie de sortir dans la rue. Mais les chevaux effrayés   par le bruit de la foule se cabrent soudain et l\'une des roues avant du véhicule se brise en heurtant violemment la porte. Profitant de la confusion, vous vous glissez à l\'intérieur de la citadelle juste avant que les gardes aient refermé les lourds battants métalliques. Rendez-vous au139', 1),
(27, '26', 'Vous avancez prudemment le long du couloir qui tourne bientôt à angle droit en direction de l\'est. Au loin, vous apercevez une étrange lueur verdâtre. Si vous souhaitez continuer dans cette direction, rendez-vous au249 Si vous préférez rebrousser chemin et prendre le couloir orienté au sud, rendez-vous au 100.', 1),
(28, '27', 'Vous suivez ce chemin pendant plus d\'une heure en surveillant le ciel de peur que le Kraan n\'attaque à nouveau. A quelque distance devant vous, un grand arbre s\'est abattu en travers du sentier, et lorsque vous vous en approchez, vous entendez des voix qui s\'élèvent de l\'autre côté du tronc massif. Si vous souhaitez passer à l\'attaque, rendez-vous au250 Si vous préférez écouter ce que disent ces voix, rendez-vous au52', 1),
(29, '28', 'Une centaine de mètres plus loin, le sentier en croise un autre orienté nord-sud. Si vous souhaitez prendre la direction du nord, rendez-vous au130 Si vous préférez aller au sud, rendez-vous au147', 1),
(30, '29', 'Vous vous approchez de la rive du lac en vous préparant à combattre. Le Kraan et la créature qui le chevauche vous aperçoivent aussitôt et foncent vers vous en volant à ras de l\'eau. C\'est alors que le maître du Kraan lance un cri qui vous glace le sang. Cette créature est un Vordak, un féroce lieutenant des Maîtres des Ténèbres. Il se rue sur vous, et il vous faut le   combattre. Votre adversaire vous attaque à l\'aide d\'une grosse Masse d\'Armes, mais il est également doué d\'une redoutable Puissance Psychique dont il va faire usage au cours de l\'affrontement. Si vous ne maîtrisez pas la Discipline Kaï du Bouclier Psychique, sa force mentale vous fera perdre 2 points d\'HABILETÉ pendant toute la durée du combat. VORDAK HABILETÉ: 17 ENDURANCE: 25 Si vous êtes vainqueur, rendez-vous au270', 1),
(31, '30', 'Tous ces gens semblent fatigués et affamés. Ils ont parcouru des dizaines de kilomètres pour fuir leur ville incendiée. Soudain, vous entendez en direction du nord de forts battements d\'ailes. « Des Kraans ! Cachez-vous ! » hurlent des voix tout au long du chemin. En face de vous, un chariot transportant des enfants casse un essieu : l\'une des roues s\'est coincée dans une ornière profonde. Les enfants, saisis de panique, se mettent à hurler. Si vous souhaitez aider ces enfants, rendez-vous au194 Si vous préférez vous mettre à l\'abri des arbres, rendez-vous au 261.', 1),
(32, '31', 'Vous essayez de réconforter de votre mieux l\'homme blessé, mais ses plaies sont profondes et il perd à nouveau connaissance. Vous le couvrez alors de sa cape et vous poursuivez votre chemin en vous enfonçant plus profondément dans la forêt. Rendez-vous au264', 1),
(33, '32', 'Vous avez parcouru environ cinq kilomètres à cheval lorsque vous apercevez à quelque distance la silhouette caractéristique de cinq grands Loups Maudits. Des Gloks les chevauchent et ils semblent se diriger vers une prairie située au bout du chemin. Soudain, l\'un des Gloks s\'écarte de ses compagnons et revient sur ses pas, lançant sa monture en direction de l\'endroit où vous vous trouvez. Si vous souhaitez vous cacher dans les sous-bois et le laisser passer, rendez-vous au176 Si vous préférez le combattre, rendez-vous au340', 1),
(34, '33', 'Le sol de la grotte est sec et poussiéreux. Vous vous enfoncez un peu plus profondément dans la pénombre et vous détectez alors une odeur de viande en putréfaction. Des os, des peaux et des dents de petits animaux sont entassés dans une crevasse. Vous trouvez parmi ces restes un petit sac qui contient 3 Pièces d\'Or. Vous les empochez et vous quittez cet endroit où quelque bête sauvage a probablement établi sa tanière, puis vous descendez le flanc de la colline. Rendez-vous au248', 1),
(35, '34', 'Sans crier gare, une terrifiante apparition fond sur vous. C\'est une créature vêtue de longs vêtements rouges et montée sur le dos d\'un Kraan. Votre assaillant pousse un cri à vous glacer le sang : il s\'agit d\'un Vordak, un féroce lieutenant des Maîtres des Ténèbres. Il est juste au-dessus de vous et il vous faut le combattre. Le monstre vous attaque à l\'aide d\'une grosse Masse       d\'Armes et il est également doué d\'une redoutable Puissance Psychique, dont il va faire usage au cours de l\'affrontement. Si vous ne maîtrisez pas la Discipline Kaï du Bouclier Psychique, vous devrez réduire de 2 points votre total d\'HABILETÉ pendant toute la durée du combat. VORDAK HABILETÉ: 17 ENDURANCE: 25  Si vous êtes vainqueur, rendez-vous au328', 1),
(36, '35', 'La forêt devient de plus en plus dense, et un enchevêtrement de buissons d\'épines recouvre le chemin en s\'épaississant à mesure que vous avancez. Bien qu\'il soit presque entièrement caché par ces broussailles, vous découvrez un autre sentier orienté vers l\'est. Celui que vous suivez semble aboutir à un cul-de-sac de buissons inextricables, et vous décidez donc d\'emprunter ce nouveau chemin en prenant la direction de l\'est. Rendez-vous au207', 1),
(37, '36', 'Le bois de l\'échelle qui monte à la vieille tour de guet, est pourri et plusieurs barreaux cèdent sous votre poids. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre égal ou inférieur à 4, vous tombez. Vous perdez donc 2 points d\'ENDURANCE et vous vous rendez au140 Si ce chiffre est supérieur à 4, vous ne tombez pas et vous vous rendez au323', 1),
(38, '37', 'Vous vous sentez fatigué et affamé, et il vous faut faire une halte pour prendre un Repas. Après avoir mangé, vous rebroussez chemin jusqu\'à la citadelle et vous marchez le long de ses hautes murailles de pierre. Vous découvrez une autre entrée dans le mur est, gardée, elle aussi, par deux soldats en armes. Si vous voulez vous approcher d\'eux et leur raconter votre histoire, rendez-vous   au289 Si vous maîtrisez la Discipline Kaï du Camouflage, rendez-vous au282', 1),
(39, '38', 'Pendant plus d\'une demi-heure, vous poursuivez votre chemin dans la forêt, parmi les fougères et les feuillages touffus des arbres et des buissons. Bientôt, vous parvenez au bord d\'un ruisseau où vous vous arrêtez quelques instants pour vous laver le visage et boire un peu d\'eau. Lorsque vous vous sentez rafraîchi, vous traversez le ruisseau et vous reprenez votre marche. Quelques instants plus tard, vous sentez une odeur de bois brûlé qui semble venir du nord. Si vous souhaitez aller voir d\'où vient cette odeur, rendez-vous au128 Si vous préférez ne pas y prêter attention, rendez-vous au347', 1),
(40, '39', 'Quelques secondes plus tard, deux petites têtes au pelage ras et à la mine inquiète apparaissent derrière le tronc : ce sont des Kakarmis qui se sont cachés là. Ils vous avertissent que les Kraans sont partout et qu\'ils ont attaqué leur village, un peu plus loin à l\'ouest, ne laissant que ruines sur leur passage. Les Kakarmis essaient de retrouver le reste de leur tribu qui s\'est enfuie dans la forêt lorsque les Ailes Noires ont lancé leur assaut sur le village. Les petites créatures apeurées vous montrent la direction de l\'est : le chemin semble aboutir à un cul-de-sac, mais d\'après elles, si vous vous enfoncez dans les sous-bois, vous trouverez quelques mètres plus loin une tour de guet où le sentier se divise en trois voies. En continuant alors vers l\'est, vous arriverez bientôt à la Route du Roi qui relie Holmgard, la capitale, au port de Toran. Vous remerciez les Kakarmis et vous prenez congé d\'eux. Rendez-vous ensuite au228', 1),
(41, '40', 'Vous contournez la clairière avec précaution en progressant à l\'abri des arbres et en surveillant les huttes pour y déceler toute présence éventuelle de l\'ennemi. Bientôt, vous rejoignez le sentier et vous vous éloignez en hâte du Bois des Brumes. Rendez-vous au105', 1),
(42, '41', 'Trois soldats galopent le long de la rive, suivis de près par les Gloks montés sur des Loups Maudits qui poussent des grognements agressifs. La rive est surélevée et, bientôt, le chef des Gloks vous aperçoit au fond du canoë. Il ordonne alors à cinq de ses congénères de vous tirer dessus à l\'aide de leurs arcs. Un instant plus tard, une pluie de flèches noires s\'abat sur vous. Si vous voulez essayer de vous enfuir en pagayant le plus vite possible le long de la rivière, rendez-vous au 174. Si vous préférez gagner la rive opposée et tenter de vous cacher à l\'abri des arbres, rendez-vous au 116.', 1),
(43, '42', 'Vous suivez le sentier pendant environ une heure et vous arrivez alors à un croisement. Si vous souhaitez continuer vers l\'est, rendez-vous au 86. Si vous préférez aller au nord, rendez-vous au 238. Si vous choisissez de vous aventurer au sud, rendez-vous au 157. Enfin, s\'il vous semble plus judicieux de prendre la direction de l\'ouest, rendez-vous au 147.', 1),
(44, '43', 'Un énorme ours noir apparaît derrière le rocher et s\'avance lentement vers vous, la gueule ouverte. Vous remarquez aussitôt qu\'il a l\'air d\'avoir mal et que sa douleur le rend furieux. Il est gravement blessé, en effet, et du sang coule sur son cou et dans son dos. Il vous faut le combattre. OURS NOIR HABILETÉ : 16 ENDURANCE : 10   Si vous êtes vainqueur, rendez-vous au 195. Au bout du troisième assaut, vous avez réussi à vous placer de telle sorte qu\'il vous est possible de vous enfuir en courant au bas de la colline. Si vous souhaitez vous échapper après avoir livré ces trois assauts obligatoires, rendez-vous au 106.', 1),
(45, '44', 'Le sentier aboutit brusquement à une pente en à-pic. Le sol, très instable à cet endroit, se dérobe sous vos pas : vous perdez l\'équilibre et vous tombez tête la première au bas de la pente. Utilisez la Table de Hasard pour obtenir un chiffre : si vous tirez un chiffre entre 0 et 4, rendez-vous au277 Entre 5 et 9, rendez-vous au338', 1),
(46, '45', 'Ces hommes ne sont pas, en réalité, ce qu\'ils semblent être. La tunique de leur chef est authentique, mais elle est tachée de sang autour du col comme si son véritable propriétaire avait été tué. Quant aux armes dont disposent ces prétendus soldats, elles n\'appartiennent pas à l\'armée ; elles sont, en effet, richement ouvragées comme celles que fabriquent les armuriers du Royaume de Durenor. Le chef porte une arbalète en bandoulière, et une tentative de fuite équivaudrait à un suicide. Vous décidez alors de combattre ces trois hommes, sinon ils vous tueront dès que vous aurez lâché votre arme. Rendez-vous au180', 1),
(47, '46', 'Vous avez parcouru trois kilomètres environ, et le feuillage des arbres commence à s\'éclaircir. Vous apercevez alors, au bord d\'un lac, une petite cabane de bois. Un homme vêtu d\'une cape s\'approche bientôt de vous et vous offre de vous faire traverser le lac sur son bateau, vous et votre cheval, pour la somme de 2 Couronnes. Si vous acceptez son offre, rendez-vous au 246 Si vous préférez refuser et contourner le lac à cheval, rendez-vous au90. Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au296', 1),
(48, '47', 'A bout de souffle et le visage ruisselant de sueur, vous vous frayez un chemin vers le sommet de la colline. Mais, soudain, une immense ombre noire se dessine devant vous : c\'est un Kraan qui tournoie dans le ciel tandis que les Gloks, dans votre dos, gagnent peu à peu du terrain. Souhaitez-vous attendre les Gloks pour les affronter en prenant avantage de votre position élevée ? Rendez-vous dans ce cas au136 Préférez-vous serrer les dents et poursuivre l\'escalade jusqu\'au sommet ? Vous vous rendrez alors au322', 1),
(49, '48', 'Votre Sixième Sens vous avertit que ces soldats ne sont pas ce qu\'ils semblent être. Vous percevez une aura maléfique autour d\'eux : ce sont des serviteurs des Maîtres des Ténèbres. Il vous faut prendre aussitôt la fuite avant qu\'ils vous aperçoivent. Rendez-vous au243', 1),
(50, '49', 'Tandis que vous lisez l\'inscription, une ombre se dessine derrière le paravent. Utilisez la Table de Hasard pour obtenir un chiffre : Si vous tirez un chiffre entre 0 et 4, rendez-vous au339 Entre 5 et 9, rendez-vous au60', 1),
(51, '50', 'Vous entendez les échos d\'un combat qui se déroule à quelque distance. Si vous souhaitez poursuivre votre chemin vers le nord en direction de la bataille, rendez-vous au97. Si vous préférez éviter ce combat, prenez une autre direction en vous rendant au243', 1),
(52, '51', 'Après avoir escaladé en toute hâte la berge boisée de la rivière, vous apercevez un peu plus loin la palissade en rondins du camp fortifié dressé autour de la capitale. La bataille fait rage à trois kilomètres environ et le mur en rondins s\'est écroulé en plusieurs endroits, là où les Maîtres des Ténèbres ont porté leur attaque. Le camp est presque désert, la plupart des soldats ayant dû le quitter pour rejoindre le champ de bataille. Une porte est aménagée dans la palissade. Si vous souhaitez vous en approcher, rendez-vous au288 Si vous préférez escalader le mur de rondins, rendez-vous au 221.', 1),
(53, '52', 'A présent que vous vous êtes approché, vous vous apercevez qu\'il ne s\'agit pas là de voix humaines. On dirait plutôt des grognements et des cris d\'animaux. Si vous maîtrisez la Discipline Kaï de la Communication animale, rendez-vous au225 Sinon, montez sur le tronc de l\'arbre pour aller voir qui se cache derrière. Rendez-vous pour cela au250', 1),
(54, '53', 'Une douleur fulgurante vous déchire soudain la jambe droite : vous venez de vous tordre la cheville et vous trébuchez en tombant tête la première. Entraîné par le poids de votre corps, vous roulez alors sur vous-même le long du flanc de la colline avant d\'atterrir enfin dans un fossé où vous perdez connaissance. Vous êtes réveillé par une autre douleur: quelque chose s\'enfonce dans votre poitrine. C\'est le fer de la lance d\'un Glok. La créature vous plaque au sol en vous gratifiant d\'un sourire diabolique, et, d\'un geste instinctif, vous essayez de saisir votre arme, mais elle a disparu. Vous êtes désormais sans défense contre les Gloks cruels et avant que toute lumière s\'éteigne, vous apercevez dans une ultime vision l\'extrémité de la lance qui s\'abat à présent sur votre gorge. Votre mission vient de prendre fin.', 1),
(55, '54', 'Il semble que le ciel soit resté sourd à vos prières car un instant plus tard, une lance siffle à vos oreilles et vient se planter dans le cou de votre cheval. Celui-ci pousse un hennissement de douleur puis s\'abat en avant. Vous roulez tous deux dans la poussière du chemin et vous vous retrouvez coincé sous le cadavre de votre monture. Avant de fermer les yeux à jamais, vous avez le temps de saisir une dernière vision : les fers de lance que les Gloks vous auront, dans quelques secondes, enfoncés profondément dans la poitrine. Votre mission a échoué.', 1),
(56, '55', 'Au moment où le Glok bondit, vous vous ruez sur lui et vous le frappez de votre arme, l\'empêchant ainsi d\'atterrir sur le dos du jeune sorcier. Vous profitez de votre avantage pour frapper à nouveau la créature qui se débat et l\'effet de surprise de votre attaque vous permet d\'ajouter 4 points à votre total d\'HABILETÉ pendant toute la durée de ce combat. N\'oubliez pas cependant de ramener ce total à son niveau antérieur dès la fin de l\'affrontement. GLOK HABILETÉ: 9 ENDURANCE: 9 Si vous êtes vainqueur, rendez-vous au325', 1),
(57, '56', 'Vous entendez un cri au-dessus des arbres : c\'est un Kraan, une de ces grandes créatures volantes et sanguinaires qui comptent parmi les plus redoutables serviteurs des Maîtres des Ténèbres. Vous plongez aussitôt dans l\'épaisseur des fougères pour vous cacher jusqu\'à ce que le cri du monstre se soit évanoui au lointain. Rendez-vous à présent au222', 1),
(58, '57', 'La cabane n\'a qu\'une seule pièce meublée d\'une table de bois, de deux bancs et d\'un lit fait de bottes de paille attachées ensemble. Un tapis brodé orne le plancher et plusieurs bouteilles contenant des liquides de différentes couleurs sont posées sur la table. Si vous souhaitez examiner ces bouteilles, rendez-vous au164 Si vous voulez soulever le tapis, rendez-vous au109 Si vous préférez quitter la cabane et inspecter l\'écurie, rendez-vous au308', 1),
(59, '58', 'Vous vous lancez sur la route au pas de course en maintenant une allure régulière. A l\'ouest, l\'armée des Maîtres des Ténèbres ressemble à une immense tache d\'encre noire qui se serait répandue entre les montagnes. Vous courez depuis vingt minutes environ lorsque vous apercevez à votre droite une meute de Loups Maudits qui avancent en file indienne le long d\'une corniche. Si vous souhaitez vous plaquer contre les rochers qui bordent la route et attendre qu\'ils soient passés, rendez-vous au286 Si vous préférez continuer à courir en tirant votre épée pour vous préparer à toute éventualité, rendez-vous au 160.', 1),
(60, '59', 'Scrutant l\'obscurité, vous distinguez quelques marches taillées grossièrement dans la terre et vous vous apercevez que cette grotte est en fait l\'entrée d\'un tunnel. Vous descendez prudemment les marches glissantes et vous découvrez au bas de cet escalier de fortune une petite boîte en argent posée sur une étagère. Si vous souhaitez ouvrir la boîte, rendez-vous au124 Si vous préférez ressortir et poursuivre votre chemin, rendez-vous au 106. Si vous choisissez enfin de vous enfoncer plus avant dans le tunnel, rendez-vous au211', 1),
(61, '60', 'Avant que les ténèbres vous engloutissent, vous apercevez l\'éclat d\'une longue lame de couteau. Votre nom s\'ajoutera à la liste des victimes du Sage et de son fils, le Voleur, celui-là même qui vient de vous trancher la gorge. Votre mission est terminée.', 1),
(62, '61', 'Vous atteignez enfin la palissade en rondins du camp fortifié qui a été dressé autour de la ville. Et tandis que vous courez vers le poste de garde, vous entendez les soldats pousser des acclamations enthousiastes : les Dieux en soient loués, ils vous ont reconnu en dépit de vos vêtements déchirés et de votre triste apparence ! Votre cape est en lambeaux, votre visage écorché et taché de sang, et vous êtes couvert de la tête aux pieds de la poussière du cimetière. Pataugeant dans un petit ruisseau qu\'il vous faut traverser, vous avancez en titubant vers l\'une des entrées du camp. Peu à peu, la vision que vous venez d\'avoir dans le cimetière vous apparaît dans toute son horreur ; vous êtes épuisé, affaibli, glacé et, juste avant de perdre connaissance, vous vous laissez tomber dans les bras tendus de deux soldats accourus à votre rencontre. Rendez-vous au268', 1),
(63, '62', 'Les « soldats » sont étendus raides morts à vos pieds. C\'étaient des brigands qui détroussaient les réfugiés de Toran et pillaient les maisons et les fermes abandonnées de la région. En fouillant leurs cadavres, vous trouvez 28 Pièces d\'Or et deux Sacs à Dos qui contiennent des provisions équivalant à trois Repas. Ils étaient armés d\'une Arbalète et de Trois Epées. L\'Arbalète a été endommagée au cours du combat, mais les trois Epées sont intactes, et vous pouvez en emporter une si vous le souhaitez. Vous modifiez, en conséquence, votre Feuille d\'Aventure, vous rangez soigneusement vos nouvelles acquisitions et vous jetez un coup d\'œil en direction de l\'ouest pour voir si la voie est libre. Enfin, vous vous remettez en route vers le camp fortifié, dressé à l\'extérieur de la ville. Rendez-vous au288', 1),
(64, '63', 'Le vieil homme vous insulte à grands cris. Il vous rend responsable de la guerre en maudissant les Seigneurs Kaï qui sont, selon lui, les agents des Maîtres des Ténèbres. Impossible de lui faire entendre raison, il va falloir le combattre. VIEIL HOMME FOU HABILETÉ : 11 ENDURANCE : 10  Si vous êtes vainqueur, rendez-vous au269', 1),
(65, '64', 'Vous êtes réveillé par les cris d\'un Kraan qui tournoie au-dessus de la roulotte. Il est tôt et le ciel est clair. A moins de cinq cents mètres, vous apercevez alors une meute de Loups Maudits qui s\'avancent le long de la route, prêts à attaquer. Il va falloir agir vite. Si vous décidez de ramasser vos affaires et de courir vous cacher à l\'abri des arbres, rendez-vous au 188. Si vous préférez détacher l\'un des chevaux de la roulotte et foncer vers la meute en espérant pouvoir la traverser et vous enfuir, rendez-vous au 16.', 1),
(66, '65', 'Tous vos sens vous avertissent que cet endroit est maléfique. Il faut vous en éloigner au plus vite. Rendez-vous au104', 1),
(67, '66', 'Surpris, vous faites volte-face et vous voyez courir vers vous un robuste sergent accompagné de deux soldats. Tous trois brandissent leurs épées, prêts à frapper. A votre tour, vous dégainez votre arme car, apparemment, ils vont vous attaquer sans prendre la peine de poser des questions. Mais, soudain, le sergent ordonne à ses hommes de s\'arrêter. Il a, en effet, reconnu votre cape de Seigneur Kaï. Tous trois remettent aussitôt leurs épées au fourreau et se confondent en excuses. Le sergent vous accompagne ensuite vers l\'Entrée Principale et envoie un de ses hommes chercher le capitaine de la garde. Vous êtes bientôt accueilli par un soldat de haute taille et de belle allure qui écoute attentivement votre récit. Lorsque vous avez fini de lui raconter votre périlleux voyage jusqu\'à la capitale, vous remarquez qu\'il a les larmes aux yeux. Il vous demande alors de le suivre et vous parcourez les salons et les couloirs somptueux du palais royal. Tout ici n\'est que splendeur et magnificence. Enfin, vous arrivez devant une haute porte sculptée gardée par deux soldats revêtus d\'armures en argent. Dans quelques instants, vous serez devant le Roi. Rendez-vous au350', 1),
(68, '67', 'Votre Sens de l\'Orientation vous permet de découvrir des traces fraîches laissées par les pattes d\'un animal. Ces empreintes suivent le chemin orienté au sud. Vous reconnaissez là les traces d\'un Ours Noir. C\'est un animal connu pour sa férocité et vous estimez préférable d\'emprunter le sentier qui mène vers l\'est. Rendez-vous au140', 1),
(69, '68', 'Bientôt, le chemin que vous suivez en croise un autre orienté est-ouest. Si vous souhaitez aller à l\'ouest, rendez-vous au130 Si vous préférez prendre la direction de l\'est, rendez-vous au15', 1),
(70, '69', 'Vous vous trouvez à proximité d\'un village ami. Contournez les Brosses à Potence et rendez-vous au272', 1),
(71, '70', 'Vous arrivez à un petit pont. Un chemin longe le cours d\'eau en direction de l\'est, et un autre sentier beaucoup plus étroit s\'enfonce dans une forêt touffue menant vers le sud. Si vous souhaitez aller à l\'est, rendez-vous au28 Si vous préférez prendre la direction du sud, rendez-vous au157 Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au8', 1),
(72, '71', 'Vous êtes étourdi, mais indemne. Vous avez fait une chute de cinq mètres en passant à travers le plafond d\'un caveau souterrain. Les murs en sont parfaitement lisses, et il vous est impossible d\'y grimper. Un tunnel voûté part du caveau en direction de l\'est. A l\'entrée de ce tunnel se trouve le sarcophage de quelque ancien seigneur. Si vous souhaitez ouvrir ce sarcophage dans l\'espoir d\'y découvrir des objets de valeur, rendez-vous au242 Si vous préférez quitter le tombeau et suivre le tunnel, rendez-vous au104 Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au65', 1),
(73, '72', 'Il vous faut affronter un Glok grimaçant chevauchant sa monture à la gueule hérissée de dents pointues. Vous devez les combattre tous deux en les considérant comme un seul et même adversaire. GLOK+ LOUP MAUDIT HABILETÉ : 15 ENDURANCE : 24 Si vous êtes vainqueur, rendez-vous au265', 1),
(74, '73', 'Vous ramenez votre cape autour de vos épaules et vous vous fondez dans les rochers et les feuillages. Puis vous observez attentivement les nouveaux arrivants et vous vous apercevez alors avec un frisson d\'horreur qu\'il ne s\'agit pas du tout de soldats du Roi. Ce sont, en fait, des Drakkarims qui comptent parmi les plus cruels serviteurs des Maîtres des Ténèbres. Ils se sont déguisés en gardes de l\'armée royale pour n\'être pas reconnus et pouvoir ainsi traverser la forêt sans encombre. Votre initiation aux Disciplines Kaï vous a sauvé la vie et vous remerciez intérieurement vos maîtres. Quelques instants plus tard, vous avez quitté la rive du cours d\'eau et vous vous enfoncez dans la forêt en prenant garde à ne pas faire de bruit. Rendez-vous au243', 1),
(75, '74', 'Les Kraans et leurs maîtres atterrissent sur le chemin, à trois mètres à peine de l\'endroit où vous vous êtes caché. Les Gloks sautent alors de leurs montures volantes à la peau couverte d\'écaillés et s\'avancent vers vous, la lance levée : ils vous ont vu. Si vous décidez de les combattre, rendez-vous au138 Si vous préférez prendre la fuite en courant dans la forêt, rendez-vous au281', 1),
(76, '75', 'En jetant un coup d\'œil prudent, vous apercevez trois hommes vêtus de vert qui chevauchent le long de la rive. Ce sont des gardes-frontières ; ils appartiennent à un régiment royal chargé de surveiller les frontières ouest du pays. L\'un de ces hommes est blessé ; il est affalé sur l\'encolure de son cheval. Une vingtaine de Loups Maudits suivent de près les trois soldats. Ils sont montés par des Gloks qui tirent des flèches en direction des gardes-frontières. Bientôt, l\'un de ces derniers tombe de son cheval et roule sur la rive : une flèche noire l\'a atteint à la jambe droite et s\'est profondément enfoncée dans sa cuisse. Si vous souhaitez   vous porter au secours de ce soldat, rendez-vous au260 Si vous préférez rester caché et vous laisser dériver au fil du courant, rendez-vous au 163.', 1),
(77, '76', 'La Pierre dégage une intense chaleur et vous brûle la main. Vous perdez 2 points d\'ENDURANCE. Vous enveloppez alors la Pierre dans un pan de votre cape et vous la laissez tomber dans une poche de votre tunique. Une Pierre Précieuse de cette taille doit valoir des centaines de Couronnes ! Vous vous réjouissez de votre bonne fortune et vous remontez sur votre cheval que vous lancez au galop sur le chemin orienté au sud. Rendez-vous au 118.', 1),
(78, '77', 'Les Gloks sont des créatures des montagnes peu habituées à poursuivre leurs proies dans les forêts, et vous parvenez bientôt à les distancer. Leurs grognements et leurs jurons s\'évanouissent au lointain : ils ont abandonné la course. Vous faites alors une courte halte pour reprendre votre souffle et vérifier votre équipement. Puis vous vous remettez en route après avoir soigneusement rangé les quelques objets que vous avez réussi à arracher aux décombres du monastère. L\'image de ses ruines fumantes vous revient en mémoire, et vous serrez les dents tandis que la forêt s\'épaissit autour de vous. Rendez-vous au19', 1),
(79, '78', 'Au moment où la roulotte passe devant vous, vous faites un bond en avant et vous parvenez à vous y agripper; vous vous retrouvez sur l\'échelon inférieur d\'un petit escabeau qui permet d\'accéder à la porte arrière du véhicule. Vous vous redressez avec précaution en vous efforçant de maintenir votre prise et, soudain, la partie supérieure de la porte qui vous fait face s\'ouvre à la volée. Le visage furieux d\'un garde du corps apparaît alors dans l\'encadrement. Si vous souhaitez lui expliquer que vous êtes un Seigneur Kaï, porteur d\'un message urgent destiné au Roi, rendez-vous au132 Si vous choisissez de lui offrir de l\'Or pour payer votre voyage jusqu\'à la capitale, rendez-vous au 12. Enfin, si vous décidez d\'attaquer le garde avec votre arme, rendez-vous au 220.', 1),
(80, '79', 'Vous arrivez à un petit pont qui traverse un ruisseau au cours rapide. De l\'autre côté du pont, le chemin s\'oriente au sud. Vous décidez de franchir le pont et de suivre le sentier. Rendez-vous au204', 1),
(81, '80', 'Vous trébuchez en arrière et vous franchissez la porte d\'entrée à reculons, les mains crispées sur votre poitrine en feu. De la fumée jaillit de la boutique et il vous faut prendre la fuite avant que le Sage et son Voleur vous attrapent. Vous parvenez à rejoindre la grand-rue et vous vous fondez dans la foule. Rendez-vous au7', 1),
(82, '81', 'Une heure plus tard environ, les Kraans et leurs terribles cavaliers disparaissent en direction de l\'ouest. Les réfugiés, tremblants de peur, sortent alors de la forêt, et vous entendez au même moment des chevaux au galop s\'approcher de l\'endroit où vous êtes. Ce sont des soldats de la cavalerie royale qui portent   l\'uniforme blanc des armées de Sa Majesté. Si vous souhaitez leur faire signe, rendez-vous au183 Si vous préférez poursuivre votre chemin vers le sud en longeant la lisière de la forêt, rendez-vous au 200.', 1);
INSERT INTO `chapitre` (`id`, `no_chapitre`, `texte`, `livre_id`) VALUES
(83, '82', 'Le Gourgaz Géant est étendu à vos pieds ; ses compagnons sifflent de rage en vous lançant des regards furieux, puis ils sautent du pont. Les tirs de flèches reprennent de plus belle tandis que les soldats du Prince forment autour de vous et de leur chef agonisant un mur de protection à l\'aide de leurs boucliers. Le Prince moribond vous regarde alors dans les yeux et prononce ces derniers mots : « Seigneur Kaï, il vous faut transmettre un message au Roi, mon père. L\'ennemi est trop puissant, nous ne pouvons le contenir. C\'est à Durenor que se trouve notre salut; Sa Majesté doit envoyer chercher ce qui peut nous épargner la défaite. Mon père comprendra ce que je veux dire. Prenez mon cheval et gagnez la capitale. Puissent les Dieux vous accompagner au long de votre voyage ! » Le cœur plein de tristesse, vous dites alors adieu au Prince, puis vous enfourchez son étalon blanc que vous lancez au galop en direction du sud, le long du chemin forestier. Derrière vous, l\'ennemi repart à l\'assaut du pont et les échos d\'une féroce bataille retentissent encore longtemps à vos oreilles. Rendez-vous au235', 1),
(84, '83', 'Vous avez couru pendant presque deux kilomètres lorsque trois soldats surgissent de sous un petit pont. Ils vous ordonnent de vous arrêter et de déposer à terre vos armes et tout votre équipement. Leurs uniformes sont tachés de sang et ils ont négligé de se raser. Leur chef porte une tunique de la garnison de Toran. Si vous décidez de leur obéir, rendez-vous au205 Si vous préférez vous préparer à les combattre, rendez-vous au 180. Si vous souhaitez leur demander ce qu\'ils veulent, rendez-vous au232 Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au45', 1),
(85, '84', 'Au moment où vous sentez le vent de ses ailes sur votre dos, vous vous laissez tomber de votre cheval et vous roulez sur vous-même en terminant votre course dans la bouc d\'un fossé, au bord de la route. Vous êtes indemne et vous vous relevez d\'un bond pour courir vous mettre à l\'abri des arbres ; mais il vous reste une trentaine de mètres à parcourir et le Kraan se prépare à fondre sur vous une nouvelle fois. Rendez-vous au188', 1),
(86, '85', 'Le chemin est large et mène droit à un enchevêtrement de broussailles. Les arbres sont très hauts à cet endroit, et il y règne un silence inhabituel. Vous parcourez plus de deux kilomètres et vous entendez soudain un battement d\'ailes au-dessus de vous. En levant les yeux, vous apercevez alors avec un frémissement d\'horreur la silhouette noire et sinistre d\'un Kraan qui fond sur vous. Si vous décidez de dégainer votre arme pour le combattre, rendez-vous au 229 Si vous préférez essayer de vous enfuir en courant vers le sud pour vous enfoncer plus profondément dans la forêt, rendez-vous au99', 1),
(87, '86', 'Vous atteignez bientôt un nouveau croisement. Si vous voulez aller vers l\'est, rendez-vous au6 Si vous préférez prendre la direction du nord, rendez-vous au35 Si vous estimez plus judicieux d\'aller vers le sud, rendez-vous au167 Si enfin vous décidez plutôt de tourner vers l\'ouest, rendez-vous au42', 1),
(88, '87', 'Concentrant votre pouvoir de Seigneur Kaï sur la serrure, vous essayez de vous en représenter le mécanisme. Peu à peu son image se forme dans votre esprit et vous constatez qu\'il est vieux et usé, mais qu\'il fonctionne toujours. L\'intensité de votre concentration commence à faiblir dangereusement lorsque vous entendez enfin un faible déclic qui témoigne que vos efforts n\'ont pas été vains. Il est plus facile d\'ôter la broche qui, lentement, se dégage de ses attaches, puis tombe sur le sol. La porte de granité tourne alors sur des gonds invisibles et la faible clarté qui baigne le cimetière se répand dans le caveau. Le passage menant à l\'extérieur est envahi de ronces qui vous écorchent le visage et les mains tandis que vous vous hissez au-dehors. Puis, soudain, au moment où vous reparaissez enfin à l\'air libre, un bruit vous fait sursauter. Vous vous retournez et vous apercevez la tête d\'un cadavre décapité, une tête de mort aux chairs décomposées : cette tête vous regarde et semble rire de toutes ses dents. Saisi d\'une panique aveugle, vous vous mettez aussitôt à courir de toute la force de vos jambes et vous traversez l\'effroyable cimetière en direction de la porte sud de la capitale. Rendez-vous au 61.', 1),
(89, '88', 'Vous jetez un regard prudent derrière le rocher et vous apercevez un soldat étendu sur le dos, son épée et son bouclier à ses côtés. Le bouclier porte l\'image d\'un Pégase blanc : c\'est l\'emblème du Prince du Sommer-lund. Ce soldat appartient à la garde du Prince ; son uniforme est déchiré et vous constatez qu\'il porte au   bras une profonde blessure. Lorsque vous vous approchez de lui, il bat des paupières. « Soignez-moi, supplie-t-il, je ne sens plus mon bras. » Si vous maîtrisez la Discipline Kaï de la Guérison et que vous désirez en faire bénéficier cet homme, rendez-vous au 216 Si vous ne maîtrisez pas cette Discipline, ou si vous ne voulez pas en faire usage, rendez-vous au31', 1),
(90, '89', 'Vous dévalez le flanc escarpé de la colline dans un nuage de poussière et de cailloux. Le Kraan continue de tournoyer au-dessus de votre tête comme pour guider les Gloks vers vous. Utilisez la Table de Hasard pour obtenir un chiffre : si vous tirez 0 ou 1, rendez-vous au53 Entre 2 et 4, rendez-vous au274 Entre 5 et 9, rendez-vous au316', 1),
(91, '90', 'La nuit tombe et vous vous retrouvez bientôt dans une obscurité totale. Il ne servirait à rien de poursuivre votre chemin, car vous vous perdriez à coup sûr. Vous attachez donc votre cheval à un arbre, vous vous étendez sur le sol en vous couvrant de votre cape et vous sombrez dans un sommeil agité. Rendez-vous au18', 1),
(92, '91', 'La petite boutique est sombre et humide. Les murs sont couverts d\'étagères, remplies de livres et de bouteilles de toutes les tailles et de toutes les couleurs. Lorsque vous refermez la porte, un petit chien noir se met à aboyer et un homme chauve apparaît en sortant de derrière un grand paravent. L\'homme vous souhaite le bonjour et vous demande poliment s\'il peut vous être utile, vous proposant notamment un choix d\'herbes et de potions rangées dans les cases d\'un comptoir de verre. Si vous souhaitez jeter un coup d\'œil à ces produits, rendez-vous au152 Si vous préférez décliner son offre et ressortir, rendez-vous au7 Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au198', 1),
(93, '92', 'Vous plongez pour vous mettre à l\'abri : il était temps, car une pluie de flèches noires jaillies de la forêt s\'abat en sifflant à l\'endroit où vous vous trouviez quelques secondes plus tôt. Vous ramenez votre cape sur vos épaules : sa couleur verte vous permet de vous fondre dans la végétation et vous vous mettez à courir dans la forêt pour fuir le plus loin possible de vos assaillants. Tous les environs sont infestés de Gloks, et il faut vous échapper au plus vite. Vous courez sans vous arrêter pendant plus d\'une heure, et vous arrivez enfin sur un chemin forestier qui mène droit vers l\'est. Vous décidez de suivre ce chemin en surveillant sans cesse les alentours de peur de voir surgir un ennemi. Rendez-vous au13', 1),
(94, '93', 'Vous faites volte-face et vous vous ruez vers l\'escalier. Une fraction de seconde plus tard, un énorme bloc de pierre s\'écrase sur le sol, juste dans votre dos. L\'entrée de la pièce que vous venez de quitter est, à présent, entièrement obstruée et, tandis que vous vous précipitez au-dehors, vous apercevez derrière vous la silhouette voûtée d\'un vieux druide qui lève sa crosse. Un instant plus tard, un éclair explose à vos pieds ; vous parvenez cependant à l\'éviter et vous descendez en courant le flanc de la colline, furieux d\'avoir perdu du temps, mais en remerciant votre Sixième Sens de vous avoir sauvé la vie. Rendez-vous au 106.', 1),
(95, '94', 'Voyant que vous avez tué son fils, le Sage fait volte-face et s\'enfuit de la boutique par la porte de derrière. Vous trouvez 12 Pièces d\'Or dans la bourse du Voleur et 4 autres dans une boîte en bois, rangée sous le comptoir. Vous examinez ensuite les potions et la baguette magique, et vous vous apercevez qu\'il s\'agit de simples imitations sans aucune valeur. Il n\'y a rien dans la boutique qui mérite votre attention et vous quittez les lieux pour rejoindre la grand-rue. Rendez-vous au7', 1),
(96, '95', 'Vous arrivez bientôt sur un chemin forestier orienté nord-sud. Si vous souhaitez suivre ce chemin étroit en direction du nord, rendez-vous au240 Si vous préférez aller au sud, rendez-vous au5', 1),
(97, '96', 'Retenant votre souffle, vous resserrez votre prise et vous vous préparez à frapper. La tension est insupportable. Les Gloks sont si proches que vous pouvez sentir l\'odeur immonde de leurs corps malpropres. Vous les entendez pousser des jurons dans leur étrange dialecte, puis quitter les abords de la grotte pour grimper vers le sommet de la colline. Lorsque, enfin, vous êtes sûr qu\'ils se sont éloignés, vous respirez à nouveau et vous essuyez la sueur qui ruisselle sur votre visage. Si vous souhaitez inspecter la grotte plus avant, rendez-vous au33 Si vous préférez quitter les lieux et redescendre la colline, de peur que les Gloks ne reviennent, rendez-vous au248', 1),
(98, '97', 'Un peu plus loin devant vous, une terrible bataille a lieu sur un pont de pierre. Le fracas des armes, les cris des combattants et les hennissements des chevaux retentissent en écho dans la forêt. Une silhouette familière se dessine alors au beau milieu du pont,       là où les corps à corps sont les plus violents : vous reconnaissez aussitôt le Prince Pellagayo, le fils du Roi. Il est en train de se battre avec un énorme Gourgaz qui brandit une Hache Noire au-dessus de sa tête couverte d\'écaillés grisâtres. Or, un instant plus tard, le Prince tombe de son cheval et s\'écroule sur le pont, atteint par une flèche qui lui a percé le flanc. Si vous souhaitez vous porter au secours du Prince Pellagayo, rendez-vous au255 Si vous préférez vous enfuir dans la forêt, rendez-vous au306', 1),
(99, '98', 'Les soldats semblent croire votre récit et ils s\'inclinent respectueusement, eu égard à votre rang de Seigneur Kaï. L\'un d\'eux tire sur une grosse corde dissimulée dans le mur et les lourdes portes commencent aussitôt à s\'ouvrir. Les gardes vous font alors entrer dans une cour intérieure tandis que les portes se referment derrière vous. Rendez-vous au139', 1),
(100, '99', 'Vous plongez dans les broussailles au moment même où le monstre s\'apprêtait à vous saisir dans ses serres pointues. Vous entendez son cri lorsqu\'il passe au-dessus de votre tête, et vous le voyez virer dans les airs pour se préparer à un nouvel assaut. Vous vous remettez alors sur pied et vous vous enfoncez dans l\'épaisseur de la forêt pour vous mettre à l\'abri. Rendez-vous au222', 1),
(101, '100', 'Le couloir glacial tourne brusquement vers l\'est et vous apercevez au loin une lueur verdâtre qui diffuse une faible clarté. Vous constatez bientôt que le couloir aboutit à une grande pièce, et que l\'étrange lumière provient d\'une sorte de coupe, posée sur le haut dossier d\'un trône de granité. Devant le trône, se trouve une statue sur son socle. Elle représente un serpent ailé dont le corps a la forme d\'un S. Si vous souhaitez vous asseoir sur ce trône, rendez-vous au 161. Si vous préférez examiner la statue, rendez-vous au133 Enfin, s\'il vous semble plus judicieux de   chercher une sortie qui vous permettrait de quitter cet endroit, rendez-vous au257', 1),
(102, '101', 'Le tumulte de la bataille se dissipe derrière vous, mais, dans le silence qui lui succède, une voix intérieure vous traite de poltron et vous reproche d\'avoir abandonné un homme en danger. Vous essayez alors de faire taire votre conscience en vous disant que votre mission est beaucoup plus importante, car ce n\'est pas seulement la vie de ce jeune magicien qui est menacée, mais celle de tous vos compatriotes si vous n\'atteignez pas vivant la capitale du royaume. Or soudain, vous apercevez un peu plus loin une meute de Gloks : vous vous mettez aussitôt à couvert pour leur échapper, mais il est trop tard, ils vous ont vu et il ne vous reste plus qu\'à vous enfuir en courant aussi vite que possible. Rendez-vous au281', 1),
(103, '102', 'Vous descendez le flanc rocheux de la colline en direction du Cimetière des Anciens et vous apercevez au loin l\'étrange nuage de brume qui baigne en permanence ces lieux grisâtres et lugubres. Ce brouillard maléfique, qui jamais ne se lève, est si dense qu\'il empêche le soleil de briller sur les tombes. Lorsque vous arrivez à proximité du cimetière, l\'air se rafraîchit et devient bientôt glacial. Avec un sentiment de terreur, vous pénétrez alors dans cette sinistre nécropole. Rendez-vous au284', 1),
(104, '103', 'Le chemin, couvert de broussailles, bifurque bientôt et un autre sentier permet d\'aller vers l\'est. Si vous souhaitez emprunter ce nouveau chemin orienté à l\'est, rendez-vous au13 Si vous préférez poursuivre votre route en direction du nord-est, rendez-vous au287', 1),
(105, '104', 'Les parois sont humides et couvertes de moisissure. Il règne ici une odeur de renfermé qui vous étouffe à moitié et des toiles d\'araignées vous balaient le visage. Vous sentez la peur vous serrer la gorge tandis que le tunnel s\'obscurcit, mais vous continuez cependant d\'avancer et vous arrivez bientôt à un croisement : le tunnel aboutit à un couloir orienté nord-sud. Si vous souhaitez aller au nord, rendez-vous au 26. Si vous préférez prendre la direction du sud, rendez-vous au 100.', 1),
(106, '105', 'Un peu plus loin, vous apercevez un Corbeau, d\'un noir de jais, perché sur la branche d\'un vieux chêne. Si vous maîtrisez la Discipline Kaï de la Communication Animale, vous pouvez appeler cet oiseau en vous rendant au298 Sinon, rendez-vous au335', 1),
(107, '106', 'Vous arrivez un peu plus tard au bord d\'un ruisseau aux eaux glacées, agitées d\'un fort courant. Son eau blanche d\'écume court parmi les rocs moussus et disparaît au loin, en direction de l\'est. Si vous désirez longer ce ruisseau vers l\'est, rendez-vous au263 Si vous préférez en remonter le cours, rendez-vous au334', 1),
(108, '107', 'Vous traversez la pièce en courant et vous vous servez de votre arme pour fracasser les crânes qui se brisent en mille morceaux. Chacun des crânes est rempli d\'une gelée grise et bouillonnante qui se met à trembler et à changer de forme. A la surface luisante de cette étrange substance apparaissent bientôt des ailes de chauves-souris et des ventouses. Saisi d\'horreur et de dégoût, vous vous précipitez alors vers le couloir et vous quittez les lieux au moment même où une lourde herse s\'abat à l\'entrée de la pièce dont elle interdit désormais l\'accès. Rendez-vous au 23.', 1),
(109, '108', 'Tout semble se dérouler au ralenti tandis que vous décrivez dans les airs un grand arc de cercle. Dans la rue au-dessous, vous distinguez la foule qui grouille sur toute la largeur de la chaussée et vous apercevez, sur votre droite, un nid de moineaux, blotti dans une gouttière. Vous entendez alors leurs pépiements affolés lorsque vous atterrissez avec fracas sur le toit d\'en face. C\'est malheureusement la dernière chose que vous entendrez, car les tuiles cèdent sous le choc et vous passez au travers des quatre étages de VAuberge de la Pantoufle Verte. Inutile de préciser que vous vous êtes rompu le cou plusieurs fois et qu\'il ne reste de vous qu\'un misérable petit tas de chair et d\'os brisés. Votre mission s\'achève ici, en même temps que votre vie.', 1),
(110, '109', 'Sous le tapis, vous ne trouvez que de la poussière ! Vous pouvez à présent examiner les bouteilles en vous rendant au164 Vous pouvez également quitter la cabane et inspecter l\'écurie ; vous vous rendrez alors au 308', 1),
(111, '110', 'Vous lancez la pierre de toutes vos forces en visant la tête du Glok, mais la créature se baisse et votre projectile lui siffle aux oreilles sans l\'atteindre. Il vous faut agir vite si vous voulez sauver le Sorcier. Rendez-vous au55', 1),
(112, '111', 'Quelques minutes après avoir quitté le croisement, vous apercevez un peu plus loin une petite cabane en rondins à côté d\'une écurie. Vous vous approchez et vous jetez un coup d\'oeil dans la cabane à travers le carreau d\'une fenêtre. L\'endroit semble désert. Si vous souhaitez entrer dans la cabane, rendez-vous au 57 Si vous préférez inspecter l\'écurie, rendez-vous au308', 1),
(113, '112', 'Soudain, le gros rocher derrière lequel vous vous êtes caché roule sur lui-même, poussé par deux Gloks hurlants qui vous font face et qui ont visiblement l\'intention de vous tuer. L\'entrée de la grotte est étroite, et vous ne pouvez combattre qu\'un Glok à la fois. Vous devrez donc les affronter à tour de rôle. HABILETÉ ENDURANCE  Premier GLOK     13   10 Deuxième GLOK    12   10 Si vous êtes vainqueur, vous pouvez explorer la grotte plus avant en vous rendant au33 Mais vous pouvez également quitter les lieux et descendre le flanc de la colline ; rendez-vous pour cela au248', 1),
(114, '113', 'Vous avez marché pendant plus d\'une demi-heure lorsque vous apercevez des fleurs d\'un rouge vif qui poussent sur un monticule. Vous reconnaissez aussitôt cette plante : c\'est du Laumspur, une herbe rare très recherchée pour ses vertus curatives. Vous cueillez alors une bonne poignée de cette herbe que vous rangez dans votre Sac à Dos. Elle vous servira à récupérer des points d\'ENDURANCE lorsque vous en mangerez. Chaque dose de Laumspur vous rendra 3 points d\'ENDURANCE et vous avez cueilli là l\'équivalent de 2 doses. Vous refermez votre Sac à Dos et vous poursuivez votre route. Si vous souhaitez vous diriger vers le nord-est, rendez-vous au347 Si vous préférez aller à l\'est, rendez-vous au295', 1),
(115, '114', 'Vous amenez votre cheval à se coucher et vous le recouvrez, ainsi que vous-même, de branches et de feuilles mortes. Vous entendez les battements d\'ailes du Kraan lorsqu\'il passe au-dessus des arbres : il se met à tournoyer au-dessus de vous, mais repart bientôt en direction du lac qu\'il traverse dans l\'autre sens. Vous décidez alors de partir au plus vite de peur qu\'il ne revienne avec quelques-uns de ses compagnons. Rendez-vous au239', 1),
(116, '115', 'Vous entrez d\'un pas chancelant dans la première maison et vous vous écroulez sur le sol, complètement épuisé. Vous sentez alors une odeur de viande cuite et vous apercevez une marmite suspendue au-dessus des braises d\'un feu mourant. Une grande table de chêne est dressée au centre de la pièce : de toute évidence, le ou les habitants de cette maison l\'ont quittée en toute hâte le matin même. Au milieu de la table sont posées une cruche d\'eau et une miche de pain. Si vous voulez prendre rapidement un Repas, rendez-vous au150 Si vous souhaitez inspecter la maison, rendez-vous au177 Si vous préférez quitter les lieux dès maintenant et reprendre votre course, rendez-vous au83', 1),
(117, '116', 'Des flèches noires s\'abattent tout autour de vous lorsque vous vous hissez hors de l\'eau boueuse. Vous vous précipitez vers les arbres pour vous mettre à couvert et attendre que les Gloks aient quitté la rive opposée. Vous reprenez ensuite votre chemin en direction de la capitale. Rendez-vous au321', 1),
(118, '117', 'L\'homme est grièvement blessé, et sa mort est proche. Si vous maîtrisez la Discipline Kaï de la Guérison, vous pouvez soulager quelque peu la douleur de ses plaies, mais il est si mal en point que vos seuls talents ne suffiront pas à le tirer d\'affaire. Bientôt, l\'homme perd à nouveau connaissance. Vous essayez alors de l\'installer aussi confortablement que possible en l\'allongeant sous un grand chêne, puis vous repartez en direction du nord-est en vous frayant un chemin dans la forêt touffue. Rendez-vous au330', 1),
(119, '118', 'Vous lancez votre cheval au galop le long du chemin droit. Vous apercevez à l\'horizon les contours de Holmgard dont les hautes murailles et les tours scintillent sous les rayons du soleil. Le sentier que vous suivez rejoint bientôt une grande route orientée nord-sud. C\'est la voie principale qui relie le port de Toran à la capitale. Vous prenez donc la direction de Holmgard en surveillant le ciel clair de peur que n\'y apparaisse la silhouette d\'un Kraan. Rendez-vous au224', 1),
(120, '119', 'Les Brosses à Potence déchirent votre cape et vous écorchent bras et jambes tandis que vous vous frayez un chemin dans leur enchevêtrement d\'épines. Un quart d\'heure plus tard, vous sortez enfin des buissons et vous poursuivez votre route d\'un pas chancelant, mais parmi les arbres cette fois. Les plaies occasionnées par les Brosses à Potence vous coûtent 2 points d\'ENDURANCE, à déduire de votre total actuel. Alors que vous continuez d\'avancer, vous vous sentez pris de vertiges et vos paupières vous semblent lourdes. Bientôt, vous arrivez au bord d\'une pente escarpée et couverte d\'arbres. Si vous souhaitez vous laisser glisser le long de cette pente en prenant bien garde à ne pas tomber, rendez-vous au226 Si, en revanche, vous ne voulez pas prendre le risque de descendre la pente dans l\'état de somnolence où vous êtes, vous marcherez le long du bord en vous rendant au38', 1),
(121, '120', 'Vous entendez les Gloks fous et sanguinaires tuer les autres chevaux de la roulotte. Vous jetez alors un coup d\'œil par-dessus votre épaule : le Kraan s\'est mis à tournoyer dans les airs. A-t-il l\'intention de vous attaquer ou s\'intéresse-t-il à autre chose ? L\'ombre noire qui grandit bientôt tout autour de vous ne laisse plus subsister le moindre doute : c\'est bien après vous qu\'il en a. Le Kraan, en vérité, est même en train de fondre en piqué à une vitesse fulgurante ! Si vous souhaitez attendre qu\'il soit presque sur vous pour sauter au même moment de votre cheval, rendez-vous au84 Si vous préférez galoper vers les arbres pour vous mettre à couvert, rendez-vous au171 Si, enfin, il vous semble plus judicieux de baisser la tête et de prier le ciel de vous protéger, tandis que vous galoperez droit devant, rendez-vous au54', 1),
(122, '121', 'Après quelques minutes de marche, vous apercevez la silhouette d\'un homme vêtu de rouge qui se tient debout au milieu du chemin. Il vous tourne le dos, et un capuchon lui couvre la tête. Le corbeau noir que vous avez vu un peu plus tôt est perché sur son bras tendu. Si vous souhaitez appeler cet homme, rendez-vous au342 Si vous préférez vous approcher de lui avec prudence, rendez-vous au309 Enfin, si vous estimez plus judicieux de dégainer votre arme et de l\'attaquer, rendez-vous au283', 1),
(123, '122', 'Dès que le cheval sent que vous communiquez directement avec lui, il se calme. Vous vous approchez alors de ce magnifique étalon et vous lui caressez la tête d\'un geste rassurant. Vous sentez à présent qu\'il ne sait plus très bien s\'il doit avoir peur ou pas. Vous montez ensuite sur son dos et vous le lancez sur le chemin, en prenant cette fois encore la direction du sud. Rendez-vous au 206.', 1),
(124, '123', 'Lorsque la créature meurt, son corps se dissout en une espèce de liquide verdâtre et répugnant. Vous remarquez alors que les herbes et les plantes sur lesquelles se répand cette substance fumante se ratatinent et meurent aussitôt. Une Pierre Précieuse de bonne taille apparaît parmi les herbes, près du corps en décomposition. Plus loin sur le sentier, vous apercevez une meute de Gloks qui se précipitent vers vous. Si vous souhaitez ramasser la Pierre Précieuse, rendez-vous au304 Si vous préférez partir à l\'instant en prenant vos jambes à votre cou, rendez-vous au2', 1),
(125, '124', 'Dans la boîte, vous trouvez 15 Pièces d\'Or et une Clé d\'Argent. Si vous souhaitez conserver la Clé, inscrivez-la sur votre Feuille d\'Aventure dans la case Objets Spéciaux. Vous pouvez continuer à explorer le tunnel en vous rendant au 211. Vous pouvez également descendre le flanc de la colline en vous rendant au 106.', 1),
(126, '125', 'Le chemin mène à une grande clairière. Vous remarquez aussitôt sur le sol d\'étranges empreintes de pattes griffues. De toute évidence, des Kraans se sont posés ici même. A en juger par le nombre d\'empreintes et la surface qu\'elles couvrent, ce sont au moins cinq de ces répugnantes créatures qui se sont rassemblées là dans les dernières douze heures. De l\'autre côté de la clairière, deux chemins s\'enfoncent dans la forêt. L\'un est orienté à l\'ouest, l\'autre au sud. Si vous souhaitez emprunter le sentier orienté au sud, rendez-vous au27 Si vous préférez prendre celui qui va vers l\'ouest, rendez-vous au214 Enfin, si vous maîtrisez la Discipline Kaï de l\'Orientation, rendez-vous au301', 1),
(127, '126', 'Vous chevauchez de plus en plus loin dans la forêt et, dans votre for intérieur, vous remerciez le Prince de vous avoir donné un si bon cheval, car bien que le sol soit entièrement recouvert d\'un enchevêtrement de buissons et de racines, l\'étalon blanc n\'a jamais fait le moindre faux pas. Bientôt les Loups Maudits sont loin derrière vous et vous arrêtez votre cheval. La lumière commence à décliner, il fait presque nuit, à présent. Si vous souhaitez poursuivre votre chemin dans la même direction, rendez-vous au46 Si vous préférez aller à gauche (dans une direction parallèle au chemin que vous avez laissé loin derrière), rendez-vous au143', 1),
(128, '127', 'Après avoir marché pendant une heure, les Drakkarims s\'arrêtent soudain tandis qu\'une énorme créature couverte d\'écaillés grises s\'approche sur le chemin. Lorsque la bête répugnante se trouve tout près de vous, son haleine fétide vous fait grimacer. Le monstre pousse un rugissement et vous saisit la tête entre ses pattes palmées. Vous entendez alors un craquement: votre colonne vertébrale vient de se briser à hauteur de votre cou. C\'est d\'ailleurs le dernier son qui vous parvient en ce bas monde, car vous mourez à l\'instant même. Votre mission s\'achève ici.', 1),
(129, '128', 'Vous écartez prudemment le feuillage, et une vision d\'horreur s\'offre aussitôt à vous : un peu plus loin, dans une petite clairière, trois Gloks ont attaché un homme à un poteau et sont en train de mettre le feu à un tas de broussailles disposé à ses pieds. Sa tunique est celle d\'un Garde-Frontière, il appartient au régiment chargé de surveiller les frontières occidentales du royaume, en bordure des monts Durncrag. L\'homme a reçu une sévère correction et il est à demi inconscient. Si vous maîtrisez la Discipline Kaï de la Chasse, rendez-vous au297 Dans le cas   contraire, vous n\'avez plus qu\'à attaquer les Gloks pour sauver la vie du soldat. Rendez-vous alors au336', 1),
(130, '129', 'Vous parvenez devant la porte principale de la ville et vous contemplez avec révérence les murs gigantesques qui se dressent devant vous. Hautes de soixante mètres, les murailles de Holmgard ont résisté tout à la fois au Temps et aux Maîtres des Ténèbres. L\'officier et vous-même parcourez au pas de course le tunnel d\'une centaine de mètres de long qui traverse le poste fortifié et vous arrivez enfin devant l\'entrée de la grande Tour de Guet. Des civils et des soldats en grand nombre courent en tous sens, chacun s\'activant à sa tâche. Si vous souhaitez continuer à suivre l\'officier, rendez-vous au3 Si vous pensez que vous arriverez plus vite à la citadelle qui abrite le Palais du Roi en vous débrouillant tout seul, rendez-vous au144', 1),
(131, '130', 'Vous parvenez bientôt à une petite clairière. En son centre, vous trouvez un banc taillé dans le tronc d\'un arbre. Vous avez faim, et il vous faut prendre un Repas, sinon, vous perdrez 3 points d\'ENDURANCE. Lorsque vous avez fini de manger, vous pourrez quitter la clairière par le sud en vous rendant au 28. Mais si vous préférez emprunter le sentier plus étroit qui mène vers l\'est en s\'enfonçant dans la forêt, rendez-vous au 201.', 1),
(132, '131', 'Vous avez parcouru environ cinq cents mètres lorsque vous entendez des cris et des bruits semblables au fracas du tonnerre. En vous approchant, vous apercevez bientôt une clairière que vous connaissez déjà. C\'est là que s\'élèvent les ruines de Raumas, un ancien temple de la forêt. Une troupe de Gloks dont vous évaluez le nombre à vingt-cinq ou trente sont en train d\'attaquer les ruines qu\'ils encerclent. D\'autres Gloks, plus nombreux encore, sont étendus raides morts ou agonisent parmi les vestiges de marbre du temple. L\'assaut des Gloks survivants ne faiblit pas pour autant et ils continuent de mener l\'attaque contre les ruines. Qui s\'y cache ? Vous l\'ignorez. Or, soudain, un éclair jaillit et vient frapper le premier rang des Gloks. Les monstres revêtus de leurs armures sont alors projetés en tous sens, trébuchant et roulant sur eux-mêmes. L\'un d\'eux, plus grand que les autres et couvert de la tête aux pieds d\'une grosse cotte de mailles noire, lance des jurons à ses congénères et les incite à repartir à l\'attaque en les frappant à grands coups d\'un fouet aux lanières de fer barbelé. Vous dégainez votre arme et vous vous approchez de la clairière en restant à l\'abri du feuillage. Vous essayez de voir qui défend ainsi les ruines du temple et, à votre grand étonnement, vous vous apercevez bientôt que c\'est un jeune homme seul, guère plus âgé que vous, qui tient ainsi tête aux créatures déchaînées. Vous reconnaissez aussitôt sa toge bleu ciel brodée d\'étoiles : c\'est un jeune Théurgiste de la Guilde des Magiciens de Toran, un apprenti en magie blanche. Cinq Gloks, la lance brandie, chargent le jeune homme qui bat rapidement en retraite à l\'intérieur des ruines. Vous le voyez alors se tourner et lever la main gauche : au même instant, un éclair bleu jaillit du bout de ses doigts et vient frapper les Gloks hurlants. Non loin de l\'endroit où vous êtes caché, un autre Glok contourne les ruines en courant et grimpe au sommet d\'une des colonnes du temple. Il serre entre ses dents un long poignard à la lame recourbée et s\'apprête à sauter sur le jeune sorcier qui se tient debout juste au-dessous de lui. Si vous souhaitez crier pour avertir le sorcier       du danger qui le menace, rendez-vous au 241. Si vous voulez vous précipiter en avant pour attaquer le Glok au moment où il bondira, rendez-vous au 55. Si vous préférez ramasser une pierre dans les ruines et la jeter à la tête du Glok, rendez-vous au 302. Enfin, si vous estimez plus judicieux de quitter ce champ de bataille et de poursuivre votre chemin en retournant dans la forêt, rendez-vous au 101.', 1),
(133, '132', 'Le garde du corps vous observe d\'un regard soupçonneux et vous claque la porte au nez. Vous entendez parler à l\'intérieur de la roulotte puis, soudain, la porte s\'ouvre à nouveau et le visage d\'un marchand prospère apparaît. Il reconnaît aussitôt votre cape de Seigneur Kaï et vous demande de bien vouloir excuser la conduite de son serviteur. Il vous fait entrer dans la roulotte et vous raconte qu\'il a été attaqué plusieurs fois depuis qu\'il a quitté le port de Toran, notamment par des Kraans et par des brigands. Son garde du corps a tout de suite pensé que vous pouviez être un bandit, ce qui explique son comportement. La roulotte est remplie de soieries et d\'épices. Le marchand vous propose quelque chose à manger et vous acceptez avec gratitude. Après avoir fait un somptueux repas, la fatigue accumulée au cours de vos épreuves a raison de vous et vous sombrez dans un sommeil profond. Rendez-vous au64', 1),
(134, '133', 'Quand vous vous approchez de la statue, celle-ci commence à se craqueler et, soudain, elle explose devant vous tandis qu\'un véritable serpent ailé, débarrassé de son manteau de pierre vous attaque férocement. Il vous faut combattre la créature. SERPENT AILÉ HABILETÉ : 16 ENDURANCE : 18 Votre adversaire est insensible à la Discipline Kaï de la Puissance Psychique. Si vous êtes vainqueur, rendez-vous au 266.', 1),
(135, '134', 'Vos talents de Seigneur Kaï vous permettent de déceler des traces de Gloks tout autour de la clairière. Les empreintes sont fraîches, et il ne fait aucun doute que ces cruels serviteurs des Maîtres des Ténèbres se trouvaient là il y a moins de deux heures. Si vous décidez d\'inspecter les maisons, rendez-vous au 305. Si vous préférez éviter cette clairière, rendez-vous au 40.', 1),
(136, '135', 'Parvenu au bord de l\'escarpement de la berge, vous jetez un coup d\'œil en contrebas et vous apercevez un enchevêtrement de débris de bois portés là par le courant. Un gros tronc d\'arbre, notamment, s\'est échoué sur la rive, à côté d\'un petit canoë. Si vous souhaitez utiliser le tronc d\'arbre pour descendre le cours de la rivière, rendez-vous au223 Si vous préférez vous servir du canoë, rendez-vous au4', 1),
(137, '136', 'Les Gloks se rapprochent puis s\'accroupissent, prêts à bondir. Vous apercevez les pointes dentelées de leurs lances et vous entendez les sons gutturaux qu\'ils produisent en parlant. « Rob Gaye Oring Ahrr oho key ! Pamark élbhûtt ! » s\'écrie la plus grande des deux créatures qui vous attaque aussitôt. Il vous faut combattre les deux Gloks à tour de rôle. Vous ajouterez un point d\'HABILETÉ à votre total en raison de l\'avantage que vous donne votre position plus élevée sur le terrain. HABILETÉ ENDURANCE  Premier GLOK    13   10 Deuxième GLOK   12   10 Si vous êtes vainqueur, rendez-vous au313', 1),
(138, '137', 'Lorsque la dernière de ces répugnantes créatures meurt enfin, la lumière verdâtre commence à diminuer. Vous constatez alors que dans chacun des crânes fracassés se trouve une Pierre Précieuse. Vous ramassez ces vingt Pierres juste avant que la lueur s\'éteigne, plongeant la chambre mortuaire dans une totale obscurité. N\'oubliez pas d\'inscrire ces Pierres Précieuses sur votre Feuille d\'Aventure. Elles prennent place dans votre bourse. Vous vous hâtez de quitter la Crypte et vous poursuivez votre chemin. Rendez-vous au23', 1),
(139, '138', 'Vous dégainez votre arme et vous vous portez à la rencontre de l\'ennemi. Ce sont deux Gloks que vous devrez combattre à tour de rôle. HABILETÉ ENDURANCE  Premier GLOK    13   10 Deuxième GLOK   12   10 Si vous êtes vainqueur, rendez-vous au291', 1),
(140, '139', 'Il règne dans la cour une intense activité. Des éclaireurs de la cavalerie attendent à côté de leurs chevaux que leurs commandants d\'unité, rassemblés au Quartier Général, leur confient des messages à porter. A chaque instant, l\'un de ces hommes quitte la cour au galop, porteur d\'une dépêche destinée aux officiers en poste dans le camp fortifié. A peine sont-ils partis que d\'autres reviennent, à bout de souffle et souvent blessés. Vous avez fait une douzaine de pas dans la cour lorsqu\'une voix retentit soudain : « Arrêtez cet homme ! » ordonne-t-elle. Rendez-vous au66', 1),
(141, '140', 'Vous vous trouvez dans une clairière au centre de laquelle on a élevé une tour branlante à l\'aide de troncs d\'arbres grossièrement taillés. Au pied de la tour, trois sentiers partent dans différentes directions. Si vous souhaitez prendre le sentier qui mène au sud, rendez-vous au14 Si vous préférez celui qui mène à l\'est, rendez-vous au252 Si le sentier orienté au sud-ouest vous paraît plus attrayant, rendez-vous au215 Enfin, si l\'envie vous prend plutôt de monter dans la tour, rendez-vous au36', 1),
(142, '141', 'Votre Sixième Sens vous avertit que quelques-unes des créatures qui ont attaqué le monastère sont restées dans les environs et inspectent les deux chemins, en quête d\'éventuels survivants à massacrer. Vous pouvez cependant éviter ces deux sentiers en coupant par les sous-bois de la forêt. Si vous souhaitez aller vers le sud, rendez-vous au56. Si vous préférez vous frayer un chemin dans le feuillage plus touffu qui s\'étend au nord-est, rendez-vous au333', 1),
(143, '142', 'Vous apercevez les hautes murailles blanches et les tours scintillantes de Holmgard, dont les étendards flottent au vent frais du matin. S\'étirant vers l\'ouest, le fleuve Eledil jaillit des monts Durncrag et se jette dans le golfe de Holm. Or, soudain, vous distinguez au loin, à l\'ombre des montagnes, une immense armée aux uniformes noirs qui marche sans répit vers la capitale. A votre droite, la grand-route mène à Holmgard à travers les plaines. En courant vite, vous pourriez atteindre en une heure le camp fortifié qui se dresse autour de la ville, mais vous seriez la plupart du temps à découvert, offrant aux Kraans une proie facile. A quelque distance devant vous, cependant, une large rivière aux eaux boueuses coule paresseusement en direction du fleuve Eledil dans lequel elle finit par se jeter. Vous pourriez profiter de l\'escarpement de ses berges pour nager à couvert et   rejoindre ainsi la capitale. A votre gauche, par ailleurs, s\'étend le Cimetière des Anciens. En marchant parmi les tombes et les monuments funéraires en ruine, vous pourriez échapper aux regards et vous approcher de votre but, mais c\'est là une zone interdite : des forces ténébreuses restent, en effet, tapies dans l\'ombre de la nécropole, attendant qu\'un passant téméraire s\'offre à leurs maléfices. Si vous voulez tenter votre chance en empruntant la grand-route, rendez-vous au 58. Si vous pensez avoir plus de chance d\'atteindre la capitale par la rivière, rendez-vous au 135. Enfin, si vous êtes suffisamment courageux pour vous risquer dans le Cimetière des Anciens, rendez-vous au 102.', 1),
(144, '143', 'Vous sortez bientôt de la forêt pour arriver sur une grande route : c\'est celle qui relie le port de Toran à la capitale. Vous lancez votre cheval au galop : si tout va bien vous devriez avoir atteint Holmgard dans la matinée. Rendez-vous au149', 1),
(145, '144', 'Vous vous frayez un chemin à coups de coude dans la foule qui se presse sur la grand-rue. Vous apercevez un peu plus loin la silhouette massive de la citadelle qui abrite le Palais du Roi. Les habitants de Holmgard, saisis de panique, courent en tous sens, tandis que retentissent les cris des Kraans qui tournoient dans le ciel de la ville. Dans la bousculade, quelqu\'un vous vole l\'un des objets contenus dans votre Sac à Dos. Si vous n\'avez plus de Sac à Dos, c\'est une arme qu\'on vous dérobe. Rayez l\'objet ou l\'arme perdue de votre Feuille d\'Aventure (c\'est vous qui choisissez ce qu\'on vous a volé). Un cheval emballé, qui tire une charrette,   passe devant vous à toute allure et vous heurte en vous projetant contre une porte cochère. Vous êtes à moitié assommé et vous perdez 2 points D\'ENDURANCE. Vous vous relevez en titubant, mais, au même moment, la porte s\'ouvre à la volée et un vieil homme décrépit se précipite sur vous en brandissant un couteau à viande. Il est fou à lier et il vous faut le combattre ou tenter de fuir. Si vous choisissez de le combattre, rendez-vous au63 Si vous préférez essayer d\'éviter l\'affrontement, rendez-vous au217', 1),
(146, '145', 'Vous avez l\'impression d\'avoir été renversé par un chariot. Vous tombez en avant et vous perdez connaissance en ressentant une terrible douleur dans le dos, et avec un goût désagréable dans la bouche : celui de la poussière qui recouvre la route. Rendez-vous au165', 1),
(147, '146', 'Vous avez parcouru deux kilomètres à cheval lorsque vous êtes soudain jeté à bas de votre monture par une flèche qui vient de vous écorcher le front. Vous perdez 3 points d\'ENDURANCE. Tandis que vous vous relevez, vous voyez surgir de la forêt, des deux côtés de la route, une bande de Drakkarims qui vous ont tendu une embuscade. Il vous faut prendre la fuite au plus vite en courant vous cacher parmi les arbres. Rendez-vous au154', 1),
(148, '147', 'Après avoir marché pendant quelques minutes, vous passez devant une petite hutte couverte de mousse qui a été bâtie à l\'écart du chemin. Vous avez faim et il vous faut prendre un Repas, sinon, vous perdez 3 points d\'ENDURANCE. Vous constatez bientôt que le chemin tourne vers l\'est. Si vous voulez continuer à le suivre, rendez-vous au42 Si vous préférez revenir sur vos pas, rendez-vous au 28.', 1),
(149, '148', 'Vous ouvrez la porte d\'un coup de pied et vous vous ruez à l\'intérieur de la ferme. Un Kraan s\'élève dans les airs en poussant un cri de victoire : il tient une victime dans ses serres pointues. Vous reprenez votre équilibre et vous jetez un coup d\'œil autour de vous : l\'endroit est désert. En vous approchant de la cheminée, vous trouvez un Marteau de Guerre posé contre le mur. Vous pouvez le prendre si vous le désirez. Si vous souhaitez rester dans cette ferme, rendez-vous au 81. Si vous pensez que vous serez plus en sécurité dans la forêt, vous pouvez courir vous y réfugier en vous rendant au320 Enfin, si vous souhaitez inspecter plus avant la pièce dans laquelle vous vous trouvez, rendez-vous au199', 1),
(150, '149', 'Tandis que vous parcourez la grand-route à cheval, la lumière du jour diminue de plus en plus ; bientôt, il fera complètement nuit et vous ne pourrez plus voir les ennerrus qui vous attendent dans l\'ombre. Vous décidez donc de vous arrêter en lisière de la forêt et de vous cacher là jusqu\'au matin. Vous pourrez par la même occasion prendre quelque repos. Vous vous aménagez une cachette sûre et vous vous y installez, emmitouflé dans votre cape verte de Seigneur Kaï. Quelques instants plus tard, vous avez sombré dans un sommeil sans rêves. Rendez-vous au256', 1),
(151, '150', 'Bien qu\'elle soit un peu trop cuite, cette nourriture a un goût délicieux (il n\'y en a pas assez cependant pour constituer un repas complet) et l\'eau claire étanche votre soif. Vous avez passé environ une demi-heure dans cette maison lorsque vous vous rendez soudain compte que vous êtes en train de prendre du retard. Ramassez vos affaires et reprenez votre chemin en vous rendant au 83.', 1),
(152, '151', 'En vous concentrant sur le trou de la serrure, vous pourrez peut-être actionner le mécanisme interne et repousser le pêne par votre seule force mentale. Vous ferez ensuite léviter la broche pour la libérer de ses attaches. En opérant ainsi à distance, vous resterez hors d\'atteinte des pièges éventuels qui pourraient se déclencher lors de l\'ouverture de la serrure. Pour savoir si votre Maîtrise Psychique de la Matière se révélera efficace dans le cas présent, rendez-vous au 87.', 1),
(153, '152', 'L\'herboriste vous offre tout un choix de potions : certaines d\'entre elles accroissent votre force, d\'autres vous rendent invisible, d\'autres encore vous donnent la faculté de vous faufiler partout, et il en est même qui vous permettent de prendre une forme gazeuse. Ensuite, l\'homme ouvre un tiroir au bas de son comptoir et vous montre une magnifique Baguette Magique. D\'après lui, il s\'agit là d\'une arme puissante qui vous permettra de combattre efficacement toute créature malfaisante en vous rendant vous-même invulnérable aux coups de vos adversaires. Pour mieux vous en convaincre, il vous invite à lire une inscription magique gravée sur la baguette. Si vous souhaitez vous pencher par-dessus le comptoir pour lire l\'étrange inscription, rendez-vous au 49. Si vous vous intéressez davantage aux potions, rendez-vous au 231.', 1),
(154, '153', 'Au loin se dressent les hautes murailles blanches et les tours scintillantes de Holmgard dont les étendards flottent au vent frais du matin. S\'étirant vers l\'ouest, le fleuve Eledil jaillit des monts Durncrag et se jette dans le golfe de Holm. Or, soudain, vous distinguez au pied des montagnes une immense armée aux uniformes noirs qui s\'avance inexorablement vers la capitale. A votre droite, la grand-route mène à Holmgard à travers les plaines. En vous lançant au galop, vous pourriez atteindre en moins d\'une heure le camp fortifié qui entoure la ville, mais vous seriez la plupart du temps à découvert, offrant aux Kraans une proie facile. A quelque distance devant vous, cependant, une large rivière aux eaux boueuses coule paresseusement en direction du fleuve Eledil dans lequel elle finit par se jeter. Vous pourriez abandonner votre cheval et profiter de l\'escarpement de ses berges pour nager à couvert jusqu\'aux abords de la capitale. Il existe enfin une troisième voie : à votre gauche s\'étend, en effet, le Cimetière des Anciens. Si vous marchiez parmi les tombes et les monuments funéraires en ruine, vous n\'auriez aucun mal à vous approcher de votre but en échappant aux regards, mais c\'est là une zone interdite car des forces ténébreuses restent tapies dans l\'ombre de la nécropole et attendent qu\'un passant téméraire s\'offre à leurs maléfices. Si vous souhaitez tenter votre chance en empruntant la grand-route, rendez-vous au 202. Si vous pensez que vous pourrez plus facilement atteindre la capitale par la rivière, rendez-vous au 135. Si, enfin, vous vous sentez suffisamment courageux pour affronter les terribles périls du Cimetière des Anciens, rendez-vous au 329.', 1),
(155, '154', 'Votre blessure vous donne le tournis et vous titubez parmi les arbres comme un aveugle. Soudain, vous tombez en avant comme si le sol s\'était dérobé sous vos pieds ; c\'est, d\'ailleurs, ce qui s\'est passé : vous venez d\'être précipité tête la première dans un piège à ours. Vous levez alors les yeux et vous distinguez les silhouettes de quatre Drakkarims qui tendent leurs arcs en vous   visant de leurs flèches. Ils tirent tous les quatre en même temps et vous entendez des grognements de triomphe s\'échapper de leurs lèvres, tordues en un rictus répugnant. Les quatre flèches s\'enfoncent profondément dans votre poitrine et toute lumière s\'éteint. Votre mission a échoué.', 1),
(156, '155', 'A votre approche, leur conversation s\'interrompt. Vous constatez par l\'expression de leurs visages que tous ces gens ont reconnu en vous un Seigneur Kaï. Alors, lentement, l\'un des hommes tend la main vers vous en un geste amical. «Seigneur, dit-il, nous avons entendu dire que le Monastère Kaï avait été détruit et tous ceux qui l\'occupaient impitoyablement massacrés. Heureusement, votre présence ici montre qu\'il s\'agissait là de fausses rumeurs. Nous avions peur que tout ne soit perdu. » Vous préférez ne pas leur révéler que le Monastère a bel et bien été anéanti : ce serait, en effet, enlever tout espoir à ces hommes et à ces femmes qui ont fui la ville de Toran dévastée par les armées ennemies. Ils ont dû abandonner tous leurs biens et les voilà qui errent sur les chemins pour tenter d\'échapper à la guerre, en espérant que les Seigneurs Kaï conduiront à la victoire l\'armée du Sommerlund. Vous apprenez par leurs récits que le port de Toran a été attaqué par mer et par air et que les armées des Maîtres des Ténèbres surpassaient largement en nombre la garnison de la ville. En dépit de la vaillance dont ils ont fait preuve, les soldats du Roi ont ainsi dû s\'incliner. Vous essayez de rassurer de votre mieux ces malheureux réfugiés en affirmant que le Sommerlund ne tombera jamais aux mains des envahisseurs. Puis vous leur souhaitez bonne chance au long de leur exode et vous reprenez vous-même votre chemin. Rendez-vous au70', 1),
(157, '156', 'Des flèches noires se fichent dans la boue tout autour de vous. D\'autres Gloks ont fait leur apparition sur la berge escarpée de la rivière et vous tirent dessus. De ce côté du cours d\'eau, il n\'y a pas d\'arbres pour vous mettre à l\'abri. Si vous souhaitez plonger dans l\'eau de la rivière et nager au fil du courant, rendez-vous au 294. Si vous préférez traverser le cours d\'eau à la nage pour aller vous mettre à couvert des arbres, sur la rive opposée, rendez-vous au 245.', 1),
(158, '157', 'La forêt s\'éclaircit et vous apercevez bientôt une route un peu plus loin. Une véritable foule occupe toute la largeur de la chaussée et des hommes et des femmes tirent des carrioles remplies d\'objets, de meubles ou de vêtements. Ce sont des réfugiés qui fuient le nord du royaume. Si vous souhaitez vous joindre à ces réfugiés qui pourront peut-être vous donner des informations sur ce qui se passe dans le nord, rendez-vous au 30. Si vous préférez poursuivre votre route vers le sud, mais en restant à l\'abri des arbres, rendez-vous au 167.', 1),
(159, '158', 'La clé s\'adapte parfaitement à la serrure que vous n\'avez aucun mal à ouvrir. Vous faites pivoter la porte sur ses gonds et vous vous retrouvez face à face avec un vieillard étrange qui porte un bâton à la main droite. Soudain, un éclair jaillit du bâton et vous frappe en pleine poitrine. Vous perdez 6 points d\'ENDURANCE. Haletant de douleur, vous avez malgré tout (si vous n\'êtes pas   mort sur le coup) la force de bousculer le vieil homme d\'un coup d\'épaule et de monter quatre à quatre un escalier plutôt raide qui mène à la lumière du jour. Vous avez grimpé la moitié des marches lorsque le vieillard fait jaillir un nouvel éclair de son bâton. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez entre 0 et 5, l\'éclair vous rate et vient exploser contre le mur. Si vous tirez entre 6 et 9, l\'éclair vous frappe dans le dos et vous perdez 4 points d\'ENDURANCE supplémentaires. Si vous avez survécu, vous émergez à la lumière du jour en maudissant votre mauvaise fortune. Vous avez découvert, par malchance, le temple secret d\'une secte de druides malfaisants et vous auriez pu tout aussi bien y laisser votre peau. Vous vous hâtez à présent de rejoindre le sentier qui redescend de l\'autre côté de la colline. Rendez-vous au 106.', 1),
(160, '159', 'Le marchand refuse votre offre : il ne vous laissera pas monter dans la roulotte. Et, soudain, il claque des doigts à l\'adresse d\'un de ses gardes du corps qui empoigne aussitôt le pommeau de son arme. Si vous souhaitez le combattre, rendez-vous au 191. Si vous préférez sauter de la roulotte, rendez-vous au 234.', 1),
(161, '160', 'Utilisez la Table de Hasard pour obtenir un chiffre : Si vous tirez entre 0 et 4, vous avez été repéré. Rendez-vous alors au 286. Si vous tirez entre 5 et 9, ils ne vous ont pas vu et poursuivent leur chemin en s\'éloignant de vous. Rendez-vous dans ce cas au 10.', 1);
INSERT INTO `chapitre` (`id`, `no_chapitre`, `texte`, `livre_id`) VALUES
(162, '161', 'Au moment où vous vous asseyez, le Serpent de Pierre se met à bouger. Une sueur froide perle à votre front et vous empoignez votre arme d\'une main tremblante, prêt à vous défendre contre une attaque éventuelle. Une langue rouge et fourchue jaillit alors de la tête de cette étrange statue et vient plonger dans la coupe de lumière verte posée sur le dossier du trône, au-dessus de vous. Lentement, la langue fourchue ressort de la coupe en tenant une Clé d\'Or qu\'elle laisse tomber sur vos genoux. Un instant plus tard, un panneau glisse dans le mur est de la pièce, découvrant l\'entrée d\'un passage secret. Vous prenez la Clé (notez-la sur votre Feuille d\'Aventure dans la case Objets Spéciaux) et vous vous hâtez de quitter les lieux par cette sortie inattendue. Rendez-vous au209', 1),
(163, '162', 'Vous vous approchez de ces hommes et vous les appelez. Mais lorsqu\'ils se tournent vers vous, votre sang se glace et vous sentez votre cœur battre à tout rompre, car ce sont des Drakkarims déguisés. En vous voyant, ils se précipitent sur vous, vous ligotent pieds et poignets et vous traînent derrière eux le long d\'un sentier. Ils vous prennent votre Sac à Dos et vos Armes, mais ils ne fouillent pas les poches de votre cape et ne trouvent pas vos Pièces d\'Or. Vous les entendez jacasser d\'un air menaçant tandis qu\'ils vous emportent ainsi vers leur repaire : de toute évidence, ils sont en train de décider du sort qu\'ils vous réservent, et vos perspectives d\'avenir ne semblent pas des plus réjouissantes. Si vous possédez la Discipline Kaï de la Maîtrise Psychique de la Matière, rendez-vous au 258. Sinon, rendez-vous au 127.', 1),
(164, '163', 'Au bout d\'une demi-heure environ, vous sentez que le courant devient plus fort. Un peu plus loin, le cours de la rivière forme un méandre et ses eaux s\'agitent en un puissant tourbillon qui vous   emportera au fond si vous vous laissez entraîner. Vous décidez donc de nager vers la rive droite et de poursuivre votre chemin à pied. Votre équipement est au complet, vous n\'avez rien perdu dans les eaux de la rivière. Rendez-vous au 321.', 1),
(165, '164', 'Vous débouchez prudemment chacune des bouteilles et vous reniflez son contenu. Il semble s\'agir là de différentes sortes de vin. Mais soudain, une autre bouteille, plus petite, coincée parmi les autres, attire votre attention. Elle est remplie d\'un liquide de couleur orange dont l\'odeur vous est familière : c\'est de l\'Essence d\'Alether, une puissante potion qui a la propriété d\'accroître votre force. Vous pouvez conserver cette fiole et en boire le contenu au début d\'un combat : votre total d\'HABILETÉ augmentera alors de 2 points pendant toute la durée de l\'affrontement. Cette quantité d\'essence d\'Alether ne représente qu\'une seule dose, vous ne pourrez donc en faire usage qu\'une fois. Inscrivez cette Potion dans la case Objets Spéciaux de votre Feuille d\'Aventure, et n\'oubliez pas de l\'effacer lorsque vous l\'aurez bue. Vous décidez à présent d\'inspecter l\'écurie en vous rendant au 308.', 1),
(166, '165', 'Vous vous réveillez tremblant de fièvre. Des images floues défilent devant vos yeux puis s\'effacent. Votre dos vous fait terriblement mal et vous hurlez de douleur. Quelques instants plus tard, vous sentez sur votre front le contact frais d\'un linge humide et vous apercevez à travers la brume de votre cerveau le visage inquiet d\'une jeune femme. Un vieillard lui murmure quelque chose à l\'oreille, puis disparaît de votre champ de vision. La jeune fille s\'agenouille alors près de vous et vous chuchote quelques mots de réconfort, mais bientôt, la lumière s\'évanouit à nouveau et vous replongez dans les ténèbres. Rendez-vous au 212.', 1),
(167, '166', 'Vous êtes en présence d\'une force hautement maléfique. Un être puissant et invisible essaie de soumettre votre esprit, et il vous faut rassembler toute votre énergie pour vous défendre. Cette lutte intense vous met en grand danger de perdre la raison. Vous traversez une longue et pénible épreuve au cours de laquelle toutes sortes d\'apparitions terrifiantes, surnaturelles, fantasmagoriques essaient de vous attirer dans leur monde de folie. La tentation et l\'horreur se mélangent dans votre tête et ce n\'est qu\'à grand-peine que vous parvenez à sortir vainqueur de ce véritable calvaire. Vous perdez 4 points d\'ENDURANCE et vous entrez dans le tunnel d\'un pas chancelant. Rendez-vous au 104.', 1),
(168, '167', 'Vous avez parcouru environ deux kilomètres lorsque vous apercevez deux jambes qui dépassent de derrière un gros rocher. Si vous voulez vous approcher pour voir de quoi il retourne, rendez-vous au 88. Si vous préférez passer votre chemin et continuer droit devant, rendez-vous au 264. Enfin, si vous maîtrisez la Discipline Kaï du Sixième Sens (et que vous désirez en faire usage), rendez-vous au 178.', 1),
(169, '168', 'Vous vous hissez au sommet de la luxueuse roulotte et vous vous installez au milieu des malles et des valises. La nuit bientôt tombera sur la grand-route. Un vent frais souffle de l\'ouest, qui vous oblige à bien serrer votre cape autour de vous pour n\'avoir pas trop froid. Au-dessous, à l\'intérieur de la roulotte, vous entendez des gens parler et une délicieuse odeur de viande rôtie vous monte aux narines. Elle vient vous rappeler que vous avez très faim et qu\'il vous faut prendre un Repas, sinon, vous perdrez 3 points d\'ENDURANCE. La fatigue a tôt fait d\'avoir raison de vous et vous finissez par sombrer dans un sommeil agité. Rendez-vous au64', 1),
(170, '169', 'Lorsque vous passez devant les crânes, chacun d\'eux pivote lentement sur lui-même comme pour suivre le moindre de vos mouvements. Vous vous trouvez à présent au milieu de cette chambre mortuaire et, soudain, vous entendez un bruit d\'os qui se brise. Des formes monstrueuses éclosent alors des crânes en déployant des ailes semblables à celles des chauves-souris. Dix de ces créatures à la peau gluante vous attaquent aussitôt, et il vous faut les combattre en les considérant comme un seul et même adversaire. MONSTRES DES CRYPTES HABILETÉ : 16 ENDURANCE : 16 Après avoir livré le premier assaut (obligatoire), vous aurez le droit de prendre la fuite en courant dans le couloir. Rendez-vous pour cela au23 Si vous décidez de combattre et que vous êtes vainqueur, rendez-vous au137', 1),
(171, '170', 'Le tunnel est sombre et il y fait beaucoup plus froid qu\'au-dehors. Vous avancez prudemment en tâtonnant la paroi et au bout de trois minutes passées dans une obscurité totale, vous sentez soudain une odeur répugnante de viande pourrie. Si vous disposez d\'une Torche et d\'un Briquet d\'Amadou, vous pourrez vous en servir pour vous éclairer. Soudain, une lourde masse tombe du plafond du tunnel et atterrit sur votre dos. Sous le choc, vos jambes fléchissent et vous vous retrouvez à genoux. C\'est un Gluâtre des Profondeurs qui vient de vous attaquer en essayant de vous étrangler de ses longs tentacules visqueux.         GLUÂTRE DES PROFONDEURS HABILETÉ : 17 ENDURANCE : 7 Si vous n\'avez pas de Torche pour vous éclairer, vous devrez réduire de 3 points votre total d\'HABILETÉ pendant toute la durée du combat. Le Gluâtre est insensible aux Disciplines Kaï de la Puissance Psychique et de la Communication Animale. Si vous êtes vainqueur, rendez-vous au319', 1),
(172, '171', 'Vous avez atteint la lisière du bois lorsque votre cheval se cabre soudain en poussant un hennissement de douleur. Le Kraan a enfoncé ses serres pointues dans les pattes arrière de votre monture et tente de vous désarçonner à grands coups d\'aile. Pendant ce temps, le Glok diabolique lance de petits cris triomphants en brandissant sa lance. Vous sautez à terre et vous courez vous mettre à l\'abri parmi les arbres, laissant là votre malheureux cheval qui agonise entre les griffes du Kraan. Rendez-vous au303', 1),
(173, '172', 'La nuit tombe et l\'obscurité bientôt vous engloutit. Il serait vain de poursuivre votre route car vous vous perdriez à coup sûr. Vous attachez donc votre cheval à un arbre, vous vous étendez sur le sol en vous emmitouflant dans votre cape de Seigneur Kaï et vous sombrez dans un sommeil sans rêves. Au matin vous êtes réveillé par des bruits de galops lointains. De l\'autre côté du lac, vous distinguez des silhouettes noires de Drakkarims et une meute de Loups Maudits. Un Kraan apparaît également au-dessus des arbres et se pose sur le toit de la petite cabane. Il est monté par une créature vêtue de rouge. Un instant plus tard, le monstre redoutable reprend son vol et traverse le lac en se dirigeant vers l\'endroit où vous êtes caché. Si vous souhaitez vous enfoncer plus profondément dans la forêt afin d\'échapper au Kraan, rendez-vous au239 Si vous maîtrisez la Discipline Kaï du Camouflage et que vous désirez en faire usage pour vous dissimuler aux   regards, vous et votre cheval, rendez-vous au114 Enfin, si vous préférez vous préparer à combattre l\'ignoble créature, rendez-vous au29', 1),
(174, '173', 'Lorsque vous atteignez la porte, un énorme bloc de pierre tombant du plafond s\'écrase au sol, juste derrière vous. Vous faites volte-face et vous constatez que la sortie est à présent entièrement obstruée. Si vous possédez une Clé d\'Argent, vous pouvez vous en servir pour essayer d\'ouvrir la porte. Rendez-vous pour cela au 158. Si vous n\'avez pas cette Clé, rendez-vous au 259.', 1),
(175, '174', 'Après vous être laissé dériver pendant environ une heure, vous remarquez que le courant devient plus fort. Vous apercevez alors à quelque distance un tourbillon que forment les eaux de la rivière à hauteur d\'un méandre. Les flots vous entraînent vers ce puissant remous qui pourrait bien signifier pour vous la noyade pure et simple. Il ne vous reste plus qu\'à plonger dans les eaux boueuses pour regagner la berge. Malheureusement, tandis que vous nagez en vous éloignant du courant, votre Sac à Dos se détache et tombe au fond de l\'eau ainsi que vos Armes. C\'est donc privé de votre équipement que vous atteignez la rive boisée sur laquelle vous parvenez à vous hisser tant bien que mal. Rendez-vous au 190.', 1),
(176, '175', 'De la main, vous faites signe aux cavaliers en qui vous reconnaissez des Gardes-Frontières de l\'armée du Roi. Ils font partie du régiment chargé de surveiller les frontières occidentales du Royaume, souvent menacées. Mais le soulagement que vous éprouvez à rencontrer des alliés est de courte durée, car vous vous apercevez bientôt que ces soldats sont, en fait, poursuivis par des Gloks hurlants qui chevauchent des Loups Maudits. Des flèches noires tombent en pluie tout autour des Gardes-  Frontières tandis que leurs terribles poursuivants gagnent du terrain. Si vous voulez essayer de vous cacher là où vous êtes, rendez-vous au 41. Si vous préférez traverser la rivière à la nage pour vous réfugier sur l\'autre berge, rendez-vous au 116. Enfin, si vous maîtrisez la Discipline Kaï du Camouflage, rendez-vous au 182.', 1),
(177, '176', 'Vous vous cachez derrière d\'épais buissons en espérant que le Loup Maudit et son cavalier ne verront pas votre cheval blanc. Par chance, votre ruse réussit et les malfaisantes créatures passent devant vous sans vous remarquer, puis s\'éloignent le long du sentier que vous venez de quitter. Si vous souhaitez attaquer les autres Loups Maudits et leurs cavaliers, rendez-vous au 253. Si vouspréférez poursuivre votre chemin en vous enfonçant plus avant dans la forêt, rendez-vous au 126.', 1),
(178, '177', 'Vous fouillez tous les placards de la maisonnette, mais vous ne trouvez rien qui puisse vous être de quelque utilité. Vous estimez alors que vous avez perdu suffisamment de temps et vous décidez de vous remettre en chemin au plus vite. Rendez-vous au 83.', 1),
(179, '178', 'Votre Sixième Sens vous permet de reconnaître à distance les bottes et les guêtres d\'un soldat de l\'armée royale. Vous sentez également que cet homme est blessé et qu\'il a besoin d\'aide. Si vous souhaitez lui porter secours, rendez-vous au 88. Si vous préférez l\'abandonner à son sort et poursuivre votre chemin, rendez-vous au 264.', 1),
(180, '179', 'Vous avez été repéré par les gardes qui vous mettent en joue avec leurs arbalètes. Si vous souhaitez lever les mains et avancer vers eux, rendez-vous au 318. Si vous préférez prendre vos jambes à votre cou pour vous cacher parmi les arbres, rendez-vous au 51.', 1),
(181, '180', 'Ils vous voient lever votre arme et vous attaquent aussitôt. Si vous souhaitez engager le combat, vous les affronterez à tour de rôle. HABILETÉ ENDURANCE CHEF DES SOLDATS   15   22 Premier SOLDAT    13   20 Deuxième SOLDAT    12   20 Si vous parvenez à les tuer tous les trois, rendez-vous au 62 Si vous souhaitez prendre la fuite, rendez-vous au22', 1),
(182, '181', 'Instinctivement, vous plongez en avant pour éviter le carreau de l\'arbalète. Le brigand tire et vous sentez la manche de votre tunique se déchirer tandis que le projectile vous écorche le bras gauche. Vous remerciez les Dieux de vous avoir protégé et vous prenez vos jambes à votre cou. Les autres bandits n\'ont pas   d\'arbalètes ni d\'arcs et ils ont tôt fait d\'abandonner la poursuite. Quelques instants plus tard, ils sont loin derrière vous et vous êtes sauf. Vous avez perdu votre Équipement, mais pas la vie. Vous faites une brève halte pour panser l\'écorchure causée par le carreau d\'arbalète puis vous vous remettez en route en direction de la capitale. Rendez-vous au288', 1),
(183, '182', 'Trois Gardes-Frontières de l\'armée royale galopent le long de la rive, suivis de près par des Gloks chevauchant leurs terribles montures, des Loups Maudits. Votre science du Camouflage vous a cependant évité d\'être vu et les Gloks diaboliques continuent leur poursuite sans même jeter un coup d\'œil du côté de la rivière. Rendez-vous au 174.', 1),
(184, '183', 'L\'officier ordonne à ses hommes de s\'arrêter et vous demande ce que vous voulez. Vous lui expliquez qui vous êtes et vous lui faites le récit de la destruction du Monastère. Consterné par la nouvelle qu\'il vient d\'apprendre, il vous donne un cheval et vous demande de le suivre auprès du Prince Pellagayo, le fils du Roi. Si vous acceptez sa proposition, rendez-vous au 97. Si vous refusez, rendez-vous au 200.', 1),
(185, '184', 'La roulotte a échappé à tout contrôle et cahote dangereusement sur le bas-côté de la route, parmi les pierres et les nids-de-poule. Vous parvenez cependant, au prix de bien des efforts, à ramener sur la chaussée les chevaux saisis de panique et à arrêter l\'attelage. En fouillant rapidement le véhicule, vous découvrez 40 Pièces d\'Or, une Epée et une quantité de nourriture équivalant à 4 Repas. Si vous souhaitez conserver l\'une ou l\'autre de ces trouvailles (ou toutes ensemble), inscrivez-les sur votre Feuille d\'Aventure. Les épreuves que vous avez subies vous ont épuisé, et il vous faut prendre un Repas. Vous plongerez ensuite dans un sommeil profond. Rendez-vous au 64.', 1),
(186, '185', 'Vous plissez les yeux et vous scrutez le feuillage des arbres pour voir s\'il ne s\'y cache pas un archer. Votre attente ne dure guère car, quelques instants plus tard, une douleur fulgurante vous déchire la poitrine et vous êtes projeté en arrière sous le choc de trois flèches qui vous transpercent le corps. Deux de ces flèches se sont enfoncées profondément dans votre thorax et la troisième s\'est plantée dans votre cuisse. Avant de sombrer dans les ténèbres, vous contemplez dans une ultime vision le feuillage des arbres qui forme un dôme au-dessus de vous et une libellule qui vient se poser sur la boucle de votre ceinture. Votre mission s\'achève ici.', 1),
(187, '186', 'Les Kakarmis disparaissent bientôt dans l\'épaisseur des sous-bois et vous vous retrouvez seul, perdu de surcroît. Vous avez marché pendant près de deux heures lorsque vous entendez soudain le bruit d\'une eau qui court. Vous décidez d\'aller dans la direction d\'où provient ce bruit. Rendez-vous au 106.', 1),
(188, '187', 'Deux têtes au pelage ras apparaissent derrière le tronc. Les deux créatures jettent un coup d\'œil à votre arme et poussent un cri d\'effroi. Elles bondissent alors loin du tronc et s\'enfuient dans la forêt. Si vous souhaitez vous lancer à leur poursuite, rendez-vous au 186. Si vous préférez les laisser partir et continuer votre chemin, rendez-vous au 228.', 1),
(189, '188', 'L\'ombre du Kraan grandit tout autour de vous et, soudain, le monstre vous frappe dans le dos en vous jetant à terre sous la force de son attaque. Utilisez la Table de Hasard pour obtenir un chiffre : si vous tirez un chiffre entre 0 et 6, le Kraan a déchiré de ses serres pointues la toile de votre Sac à Dos. Tout votre Équipement se répand alors sur le sol et il ne vous reste plus qu\'à le rayer de votre Feuille d\'Aventure. Si vous tirez un chiffre entre 7 et 9, votre Sac à Dos est intact, mais vous avez été blessé aux deux bras et vous perdez 3 points d\'ENDURANCE avant de courir vous mettre à l\'abri des arbres. Rendez-vous au303 dans l\'un et l\'autre cas.', 1),
(190, '189', 'Grâce à votre entraînement de Seigneur Kaï et à la promptitude de vos réflexes, vous avez échappé à ce marécage qui aurait pu se révéler tout aussi meurtrier qu\'un Kraan ou un Drakkarim. Vous êtes contrarié d\'avoir perdu du temps et vous vous hâtez de poursuivre votre chemin parmi les arbres, en direction du sud. Un peu plus loin devant vous, un large chemin mène également vers le sud. Rendez-vous au118', 1),
(191, '190', 'Vous parcourez cinq kilomètres le long de la rivière et vous découvrez alors une épave de péniche. Il semble que quelqu\'un y ait élu domicile car vous apercevez, au travers d\'un trou dans le pont, un lit et des ustensiles de cuisine. Si vous voulez fouiller cette péniche, rendez-vous au 20. Si vous préférez poursuivre votre chemin, rendez-vous au 273.', 1),
(192, '191', 'Le garde du corps dégaine un long cimeterre et s\'apprête à vous attaquer. GARDE DU CORPS HABILETÉ : 11 ENDURANCE : 21 Si vous êtes vainqueur, rendez-vous au 24. Si vous souhaitez prendre la fuite au cours du combat, vous pourrez sauter de la roulotte en vous rendant au 234.', 1),
(193, '192', 'Vous distinguez la gueule hérissée de dents pointues d\'un Loup Maudit et vous entendez les cris monstrueux des Gloks. Deux d\'entre eux viennent droit sur vous, mais votre cheval vous sauve d\'une mort certaine en sautant sur les Loups Maudits qu\'il projette à terre à grands coups de sabot. Vous frappez un Glok à toute volée et votre arme lui ouvre la tête. Alors, soudain, comme par miracle, vous vous retrouvez galopant sur la grand-route : vous avez réussi à traverser la meute hurlante qui se trouve à présent derrière vous. Vous sentez, cependant, une présence menaçante au-dessus de votre tête : c\'est celle d\'un Kraan qui vient de prendre son envol. Si vous souhaitez quitter la grand-route pour vous réfugier à l\'abri des arbres de la forêt, rendez-vous au 171. Si vous préférez continuer tout droit en galopant à bride abattue sans vous occuper du Kraan, rendez-vous au 120.', 1),
(194, '193', 'La bête sauvage et son cavalier sont étendus raides morts à vos pieds. Vous remarquez alors un rouleau de Parchemin glissé dans la ceinture du Glok. Vous pouvez le prendre et le noter sur votre Feuille d\'Aventure dans la case Objets Spéciaux. Les autres Loups Maudits se précipitent dans votre direction, le long du sentier. Si vous souhaitez les combattre, rendez-vous au 253. Si vous préférez vous enfuir dans la forêt, rendez-vous au 126.', 1),
(195, '194', 'Vous courez à toutes jambes en direction du chariot. La panique s\'est répandue parmi la foule, tandis que les Kraan attaquent et emportent leurs malheureuses victimes dans un ciel obscurci par leurs immenses ailes noires. Un Kraan, plus grand encore que les autres, vole au-dessus du chariot et trois Gloks hurlants sautent de son dos pour atterrir à califourchon sur les chevaux de l\'attelage. Il vous faut combattre les trois créatures ou quitter le chariot pour aller vous réfugier dans une ferme proche. Si vous souhaitez combattre les Gloks, rendez-vous au 208. Si vous préférez courir vous réfugier dans la ferme, rendez-vous au 148.', 1),
(196, '195', 'Vous essuyez votre arme qui ruisselle du sang de l\'ours et vous remarquez l\'entrée d\'une grotte cachée derrière les rochers d\'où a surgi la bête sauvage. Si vous souhaitez explorer cette grotte, rendez-vous au 59. Si vous préférez poursuivre votre chemin, rendez-vous au 106.', 1),
(197, '196', 'Vous suivez l\'homme dans une petite bibliothèque contiguë. Il pousse alors l\'un des nombreux livres alignés sur les étagères et vous entendez un déclic. Aussitôt, tout un pan d\'étagères glisse sur lui-même, découvrant un passage secret. Si vous souhaitez suivre cet homme dans le passage, rendez-vous au 332. Si vous ne voulez pas pénétrer dans ce sombre couloir, vous quittez les lieux et vous retournez dans la rue en vous rendant au 144.', 1),
(198, '197', 'Le Drakkarim est étendu raide mort au fond de l\'embarcation. Il est porteur d\'un sabre et de 6 Pièces d\'Or que vous pouvez vous approprier si tel est votre désir. Vous jetez ensuite le corps de votre adversaire dans l\'eau du lac et vous le regardez disparaître dans ses profondeurs glacées. Vous ramassez ensuite la perche et   vous poussez le bateau sur l\'autre rive où vous l\'abandonnez. Rendez-vous au 172.', 1),
(199, '198', 'Vous sentez qu\'il y a quelqu\'un d\'autre derrière le paravent et que toute cette boutique baigne dans une aura maléfique. Soyez sur vos gardes, il se passe ici quelque chose de louche. Si vous souhaitez retourner dans la rue, rendez-vous au 7. Si vous préférez examiner les articles exposés dans la vitrine du comptoir, rendez-vous au 152.', 1),
(200, '199', 'La plupart des placards et des tiroirs sont vides. Les habitants de cette maison ont presque tout emporté avec eux ; vous parvenez cependant à trouver dans la cave suffisamment de fruits pour vous faire un Repas. Notez-le sur votre Feuille d\'Aventure. Rendez-vous ensuite au 81.', 1),
(201, '200', 'La nuit tombe et les ombres de la forêt s\'étirent. Vous vous apprêtez à faire halte pour vous reposer lorsque vous apercevez à travers les arbres une foule qui avance sur une large route orientée au sud. En vous approchant, vous distinguez une roulotte tirée par six grands chevaux ; le véhicule occupe le milieu de la chaussée et se déplace à grande vitesse parmi les piétons et les autres voitures à chevaux. C\'est peut-être là votre chance d\'atteindre la capitale plus vite que prévu. Si vous souhaitez sauter sur la roulotte, rendez-vous au 78. Si vous maîtrisez la Discipline Kaï du Camouflage, vous pourrez vous accrocher à la roulotte et vous dissimuler parmi les bagages attachés sur le toit en vous rendant au 168.', 1),
(202, '201', 'Vous suivez le sentier pendant une heure environ, puis vous découvrez un autre chemin plus large qui part en direction du sud. Si vous souhaitez suivre ce chemin orienté au sud, rendez-vous au 238. Si vous souhaitez aller à l\'est, rendez-vous au 215. Si vous préférez aller vers l\'ouest, rendez-vous au 130.', 1),
(203, '202', 'Vous galopez le long de la grand-route qui mène à la capitale lorsque votre cheval ralentit soudain l\'allure, se met à boiter, puis s\'arrête. Vous mettez pied à terre pour examiner sa jambe avant droite qu\'il tient levée : il a perdu un fer et s\'est blessé au sabot. En maudissant votre mauvaise fortune, vous l\'abandonnez donc sur le bas-côté et vous poursuivez à pied votre chemin. Rendez-vous au 58.', 1),
(204, '203', 'Une douleur fulgurante vous traverse la poitrine alors que quelque chose vient d\'exploser tout contre vous dans une gerbe d\'étincelles rouges. Vous perdez 10 points d\'ENDURANCE et, si vous n\'êtes pas déjà mort, vous voyez à travers la fumée le Sage s\'apprêter à vous lancer une nouvelle charge explosive. S\'il vous reste 10 points d\'ENDURANCE ou plus, rendez-vous au 80. S\'il vous reste moins de 10 points d\'endurance, rendez-vous au 344.', 1),
(205, '204', 'Après avoir marché pendant une heure, vous arrivez à une bifurcation. Le sentier que vous suivez continue vers le sud et un autre chemin sur votre droite part vers l\'ouest. Le sentier orienté à l\'ouest vous ramènerait droit au marécage et vous décidez donc de poursuivre en direction du sud. Rendez-vous au 111.', 1),
(206, '205', 'Leur chef ramasse votre Équipement et vous fait signe d\'avancer le long du chemin. Les deux autres ont alors un sourire mauvais et vous vous rendez soudain compte qu\'il ne s\'agit pas du tout de soldats : ce sont des brigands déguisés. Vous prenez aussitôt la fuite en courant à toutes jambes vers la capitale. Mais au même instant, un frisson vous parcourt l\'échiné : vous venez en effet d\'entendre derrière vous le déclic d\'une arbalète que l\'on arme. Utilisez la Table de Hasard pour obtenir un chiffre : si vous tirez un chiffre entre 0 et 4, rendez-vous au 181. Entre 5 et 9, rendez-vous au 145.', 1),
(207, '206', 'Le sentier débouche bientôt sur une grande route où un poteau de signalisation indique Toran au nord et Holmgard au sud. Vous prenez la direction du sud, vers la capitale. Rendez-vous au224', 1),
(208, '207', 'Le sentier aboutit bientôt à une route qui traverse le cours d\'eau par un pont de pierre. Un panneau de signalisation indique Toran au nord et Holmgard au sud. La route est encombrée d\'une foule de gens qui marchent vers le sud en poussant des carrioles remplies d\'objets divers. Vous vous joignez à cette colonne de réfugiés en prenant à votre tour la direction de la capitale. Rendez-vous au30', 1),
(209, '208', 'Les répugnantes créatures brandissent leurs lances et vous attaquent. Il vous faut les combattre en les considérant comme un seul et même ennemi. GLOKS HABILETÉ: 15 ENDURANCE: 13 Si vous êtes vainqueur, vous pourrez aller vous réfugier dans la ferme en vous rendant au148 Vous pouvez également, toujours en cas de victoire, retourner dans la forêt. Rendez-vous alors au320', 1),
(210, '209', 'Devant vous un couloir monte en pente douce. Lorsque vous arrivez au bout de cette pente, une porte de pierre glisse dans le mur, découvrant un autre passage. Vous franchissez la porte qui se referme aussitôt derrière vous avec un grincement. Rendez-vous au 23.', 1),
(211, '210', 'A peine avez-vous franchi la porte qu\'un compagnon de la Guilde vous barre le passage et vous demande ce que vous voulez. Vous lui expliquez alors la nature de votre mission et il s\'empresse aussitôt de vous mener dans les appartements des Maîtres de la Guilde. Un vieil homme distingué vêtu d\'une toge violette vous accueille et écoute votre récit. Puis, vous prenant par le bras, il vous conduit dans une bibliothèque contiguë dont il ferme la porte derrière lui. Il pousse ensuite l\'un des milliers de livres alignés sur les étagères et un pan de mur glisse alors sur le côté, découvrant un passage secret. L\'homme vous fait signe de le suivre dans ce mystérieux couloir. Si vous souhaitez lui emboîter le pas, rendez-vous au 332. Si cet homme ne vous inspire pas entièrement confiance, vous pouvez quitter les lieux et retourner au-dehors en vous rendant au 37.', 1),
(212, '211', 'Vous marchez le long d\'un couloir plongé dans la pénombre et vous arrivez bientôt dans une grande pièce carrée. Une porte de chêne est aménagée dans le mur d\'en face. Si vous souhaitez vous diriger vers cette porte, rendez-vous au 173. Si vous maîtrisez la Discipline Kaï du Sixième Sens, rendez-vous au 244. Si, enfin, vous préférez retourner à l\'air libre et poursuivre votre route, rendez-vous au 106.', 1),
(213, '212', 'Lorsque vous vous réveillez, la douleur n\'est plus qu\'un mauvais souvenir et vous récupérez tous les points d\'ENDURANCE dont vous disposiez au départ de votre mission. Un homme de haute taille, vêtu d\'une toge blanche, se tient debout devant vous, une coupe remplie d\'herbes entre les mains. Il verse les herbes dans l\'eau bouillante d\'un chaudron puis se tourne vers vous. « Vous avez vu la mort de près, Seigneur Kaï, mais ce n\'est pas encore aujourd\'hui que vous irez rejoindre le troupeau des bienheureux. Votre corps est entièrement guéri en effet, pourtant, il me semble que votre âme est blessée. Quelle est donc la raison de votre tourment 1 » Vous reconnaissez en cet homme l\'un des grands médecins du Roi: il porte, en effet, brodée sur sa manche, la colombe blanche, symbole de sa vocation. Vous racontez alors au vénérable savant les tristes événements qui vous ont amené jusqu\'ici. Lorsque vous avez terminé votre récit, le vieil homme vous prend doucement le bras et vous fait lever de votre lit en vous demandant de le suivre. C\'est à cet instant seulement que vous remarquez la magnificence des lieux : vous vous trouvez en effet dans une pièce richement décorée à laquelle on accède par un long couloir aux murs couverts de somptueuses tapisseries. Vous comprenez alors peu à peu que vous êtes enfin parvenu au bout de vos peines car cette fastueuse demeure n\'est autre que le Palais du Roi : vous êtes à l\'intérieur de la citadelle de Holmgard, et dans quelques instants vous apparaîtrez devant votre souverain. Rendez-vous au350', 1),
(214, '213', 'Il y a bien deux heures à présent que vous vous frayez un chemin dans la forêt et votre crainte de vous être perdu semble bel et bien justifiée. Vous n\'avez décelé aucune trace témoignant de la présence de l\'ennemi dans cette partie de la forêt ; seul le cri d\'un Kraan au lointain est venu parfois troubler la quiétude qui règne alentour. Cependant, en descendant le flanc rocheux d\'une petite colline, vous remarquez soudain quelque chose d\'insolite dans l\'enchevêtrement des sous-bois qui s\'étendent devant vous. Rendez-vous au331', 1),
(215, '214', 'Le sentier se rétrécit peu à peu, puis disparaît bientôt dans une végétation inextricable. Impossible de poursuivre dans cette direction, il vous faut retourner à la clairière. Rendez-vous au125 pour prendre le chemin orienté au sud.', 1),
(216, '215', 'Vous arrivez dans une petite clairière au centre de laquelle reposent les os blanchis d\'un énorme animal. Un sentier étroit part de la clairière en direction du sud. Si vous souhaitez examiner le squelette de l\'animal, rendez-vous au 346. Si vous préférez poursuivre votre chemin vers le sud, rendez-vous au 14.', 1),
(217, '216', 'Vous posez une main sur son front et l\'autre sur la plaie de son bras. Vous sentez alors la chaleur de votre Pouvoir de Guérison quitter votre corps et se répandre dans celui de l\'homme blessé. Des forces lui reviennent ; il parle et vous dit s\'appeler Trimis. C\'est un soldat de l\'armée du Prince Pellagayo. Le Prince et sa troupe ont engagé une bataille un peu plus loin au sud, sur le pont d\'Alema, qu\'une meute de créatures au service des Maîtres des Ténèbres a attaqué le matin même. Le soldat vous raconte que, au cours des combats, il a été emporté dans les airs par un Kraan qui l\'a ensuite laissé tomber dans la forêt où vous venez de   le trouver. Vous installez le blessé aussi confortablement que possible et vous poursuivez votre chemin. Rendez-vous au 264.', 1),
(218, '217', 'Vous vous hâtez de fuir le vieux fou et vous disparaissez dans une ruelle obscure, bordée de petites maisons serrées les unes contre les autres. Au bout de la ruelle, une enseigne accrochée au-dessus d\'une porte verte indique : KOLANIS Herboriste et Sage Si vous voulez pousser cette porte et entrer dans la boutique du Sage, rendez-vous au 91. Si vous préférez attendre là quelques minutes pour être sûr que le vieux fou s\'en est allé, puis revenir ensuite dans la grand-rue, rendez-vous au 7.', 1),
(219, '218', 'Votre Sixième Sens vous indique que ce ne sont pas seulement des chevaux qui galopent dans votre direction. Vous percevez également la cavalcade d\'une meute de Loups Maudits et des cris de guerre poussés par des Gloks. D\'après l\'intensité de ces hurlements, vous jugez qu\'il doit y avoir là plus d\'une douzaine de Gloks et il est donc préférable de ne pas manifester votre présence, pour l\'instant tout au moins. Rendez-vous au 75.', 1),
(220, '219', 'Ce qui reste de vous se trouve encastré dans l\'escalier, à une profondeur de deux mètres, sous la masse d\'un énorme bloc de granité. Votre mission s\'achève ici, en même temps que votre vie.', 1),
(221, '220', 'Le Garde du Corps dégaine un long cimeterre et s\'apprête à vous en enfoncer la lame dans la poitrine. GARDE DU CORPS HABILETÉ : 11 ENDURANCE : 20   Si vous êtes vainqueur, rendez-vous au 24. Si vous souhaitez prendre la fuite au cours du combat, vous pouvez sauter de la roulotte en vous rendant au 234.', 1),
(222, '221', 'Vous vous approchez prudemment de la palissade. Les rondins qui la constituent ont été grossièrement taillés et offrent de nombreuses prises qui vous permettent de l\'escalader. Mais lorsque vous parvenez au sommet, vous vous trouvez face à une arbalète : le soldat qui la tient vous fait signe de descendre à terre en empruntant une échelle de bois fixée à la palissade. Il serait tout à fait vain de discuter, et vous vous empressez donc d\'obéir en descendant précautionneusement les échelons. Rendez-vous au 318.', 1),
(223, '222', 'Vous arrivez bientôt sur un chemin forestier qui bifurque à cet endroit. Si vous souhaitez prendre le sentier orienté au sud, rendez-vous au 140. Si vous préférez emprunter la branche est, rendez-vous au 252. Enfin, si vous maîtrisez la Discipline Kaï du Sens de l\'Orientation, rendez-vous au 67.', 1),
(224, '223', 'Après bien des efforts, vous parvenez à dégager le tronc de tous les débris qui l\'entourent. Vous attachez ensuite toutes vos affaires en un paquet bien serré que vous coincez dans un creux du tronc d\'arbre, puis vous vous y installez vous-même à califourchon. Le courant bientôt vous emporte et vous dérivez lentement au fil de l\'eau. Une vingtaine de minutes plus tard, vous entendez des chevaux galoper au loin, sur la rive gauche. Si vous souhaitez vous cacher derrière le tronc, rendez-vous au 75. Si vous préférez signaler votre présence aux cavaliers qui s\'approchent, rendez-vous au 175', 1),
(225, '224', 'Vous avez parcouru plusieurs kilomètres à cheval sans trouver trace de réfugiés ou d\'ennemis. Vous vous dirigez alors vers un chemin qui s\'élève un peu plus loin à flanc de colline. Sur cette hauteur, vous devriez apercevoir la capitale. En arrivant là-haut, vous contemplez en effet un spectacle qui vous remplit d\'espoir, mais qui vous fait frémir également : vous n\'êtes décidément pas au bout de vos peines... Rendez-vous au153', 1),
(226, '225', 'Ce langage est celui des Kakarmis, une race d\'animaux forestiers, doués d\'intelligence, qui habitent les forêts du Sommerlund. Vous n\'avez rien à redouter de ces créatures timides et paisibles et votre Sens de la Communication Animale vous permet de leur parler dans leur étrange dialecte. Que désirez-vous leur dire ? « N\'ayez pas peur, je viens en ami » ? Rendez-vous dans ce cas au187 « Je suis un Seigneur Kaï, je ne vous veux aucun mal, je souhaite simplement parler avec vous » ? Rendez-vous alors au39', 1),
(227, '226', 'Tout d\'abord, la descente vous paraît facile mais, bientôt, votre vue se brouille et vous sentez vos jambes faiblir. Les Dents de Sommeil commencent à produire leur effet et, soudain, vous trébuchez et vous perdez connaissance en tombant tête la première. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 4, rendez-vous au277 Entre 5 et 9, rendez-vous au338', 1),
(228, '227', 'Vous avez maintenant de la vase jusqu\'à la ceinture, l\'air est lourd et de petits insectes vous piquent le visage et vous bouchent le nez. Puis soudain, quelque chose s\'enroule autour de vos jambes. C\'est une Vipère des Marais qu\'il vous faut combattre.   VIPÈRE DES MARAIS HABILETÉ: 16 ENDURANCE: 6 Si vous perdez des points d\'ENDURANCE au cours du combat, rendez-vous au271 Si vous parvenez à tuer la Vipère sans perdre aucun point d\'ENDURANCE, rendez-vous au348', 1),
(229, '228', 'Le sentier continue vers l\'est puis disparaît bientôt sous d\'épaisses broussailles. Si vous souhaitez poursuivre vers l\'est en vous frayant un chemin à coups de hache, rendez-vous au140 Si vous préférez aller vers le sud, là où les sous-bois sont moins touffus et vous enfoncer plus avant dans la forêt, rendez-vous au215', 1),
(230, '229', 'Le Kraan vole au-dessus de votre tête en soulevant des nuages de poussière par le seul battement de ses ailes immenses. Bientôt, vous avez le nez et les yeux pleins de poussière et vous vous mettez à tousser et à cligner les paupières. Puis, soudain, le monstre vous attaque. Vous allez devoir le combattre jusqu\'à la mort de l\'un de vous deux, mais en raison de la poussière qui vous désavantage, il vous faut réduire de 1 point votre total d\'HABILETÉ pendant toute la durée de l\'affrontement. KRAAN HABILETÉ: 16 ENDURANCE: 25 Si vous êtes vainqueur, vous avez le choix entre : vérifier si la créature ne transportait pas quelque objet qui pourrait mériter votre intérêt. Rendez-vous alors au 267 ; ou poursuivre votre chemin le long du sentier orienté à l\'est. Rendez-vous pour cela au 125.', 1),
(231, '230', 'Vous distinguez au loin une rangée de péniches alignées en travers de la rivière. Des soldats se tiennent debout, arme au poing, sur le pont des embarcations et vous entendez les grognements des Loups Maudits qui rebroussent chemin sur la rive opposée. Pour une fois, vous oubliez toute prudence, et vous vous mettez à courir le long de la berge en direction des péniches. Rendez-vous au 179.', 1),
(232, '231', 'Au moment où vous allez demander le prix des potions, un jeune homme bondit sur vous en renversant le paravent. Votre assaillant tient dans sa main un poignard à la longue lame recourbée. Il vous faut le combattre. VOLEUR AU POIGNARD HABILETÉ : 13 ENDURANCE : 20 Si vous parvenez à le tuer en quatre assauts, ou moins, rendez-vous au 94. Si, après quatre assauts, il est toujours vivant, rendez-vous au 203. Vous avez le droit de prendre la fuite après avoir livré deux assauts au moins. Vous filerez alors par la porte de la boutique et vous courrez jusqu\'à la grand-rue en vous rendant au 7.', 1),
(233, '232', 'Leur chef, à l\'allure patibulaire, s\'approche de vous et vous déclare ceci : « Ce que nous voulons ? C\'est très simple, cher monsieur : votre bourse ou votre vie ! » Si vous souhaitez les combattre, rendez-vous au 180. Si vous préférez tenter de vous enfuir, rendez-vous au 22.', 1),
(234, '233', 'Il vous faut presque une heure pour rattraper le cheval et parvenir à le calmer. Vous vous êtes éloigné de la cabane en direction du nord mais vous êtes sûr de pouvoir retrouver votre   chemin. Vous montez sur le dos du cheval et vous retournez jusqu\'à la cabane, puis vous poursuivez votre route en direction du sud. Rendez-vous au 206.', 1),
(235, '234', 'Vous sautez de la roulotte qui file à bonne allure, mais vous vous recevez mal et vous vous brisez la cheville en tombant. La douleur est insupportable : elle vous fait perdre connaissance. Hélas ! vous ne vous réveillerez jamais. Peut-être, cependant, serez-vous intéressé d\'apprendre que votre tête orne désormais la selle d\'un Kraan ? Votre mission s\'est achevée ici, en même temps que votre vie.', 1),
(236, '235', 'Le cheval du Prince est un magnifique animal, rapide et au pied sûr. Il galope le long du sentier sinueux comme s\'il s\'agissait d\'une route large et droite et, bientôt, les échos de la bataille se dissipent derrière vous. Vous avez faim, et il vous faut prendre un Repas tandis que vous chevauchez l\'étalon blanc, sinon, vous perdrez 3 points d\'ENDURANCE. Quelques kilomètres plus loin, le sentier aboutit à un croisement en forme de T. Il y a là un panneau indicateur, mais il est illisible. Si vous voulez prendre à gauche, rendez-vous au 32. Si vous préférez tourner à droite, rendez-vous au 146. Enfin, si vous maîtrisez la Discipline Kaï de l\'Orientation, rendez-vous au 254.', 1),
(237, '236', 'La Pierre Précieuse reste suspendue au-dessus de la bouche du squelette en diffusant une lueur rouge vif. Puis soudain, en une violente explosion, des flammes écarlates jaillissent du sarcophage, détruisant complètement la Pierre de Vordak. Vous êtes projeté contre le mur et assommé par le choc. Lorsque vous reprenez connaissance, la chambre mortuaire est complètement vide : le sarcophage et le squelette du roi ont tous deux disparu. Quant à vous, les nouvelles ne sont pas bonnes : vous avez, en effet, perdu 6 points d\'ENDURANCE et votre total d\'HABILETÉ se trouve réduit de 1 point pour le reste de vos jours. Vous vous relevez précautionneusement et vous vous dirigez vers le tunnel en titubant. Rendez-vous au 104.', 1),
(238, '237', 'Déployant pleinement vos talents de Seigneur Kaï en matière de Camouflage, vous vous enfouissez dans le sol meuble du flanc de la colline. Puis vous vous couvrez de votre cape et vous disposez quelques branches d\'arbre sur cet abri improvisé pour mieux le dissimuler aux regards. Utilisez à présent la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 4, personne ne vous découvre et vous vous rendez au 265. Si en revanche vous tirez un chiffre entre 5 et 9, vous avez encore des progrès à faire dans la Discipline Kaï du Camouflage, car l\'un de vos ennemis a tôt fait de vous trouver et de vous attaquer. Rendez-vous alors au 72 pour voir à qui vous avez affaire.', 1),
(239, '238', 'Le sentier contourne plusieurs tertres et collines aux flancs boisés, puis aboutit enfin à une petite cabane en rondins incendiée. Il semble qu\'elle ait brûlé tout récemment car les cendres sont encore chaudes, et il s\'en élève un filet de fumée. Il se peut que cet endroit soit dangereux. Si vous souhaitez repartir par le sentier orienté au sud, rendez-vous au 42. Si vous préférez emprunter le chemin qui mène vers le nord, rendez-vous au 68.', 1),
(240, '239', 'Tandis que vous vous enfoncez dans la forêt, vous entendez battre les ailes du Kraan qui passe en volant au-dessus des arbres avant de disparaître en direction du nord. Vous chevauchez pendant environ une heure, puis vous arrivez à une clairière. De l\'autre côté, face à vous, un sentier mène vers le sud. Si vous souhaitez traverser la clairière pour prendre ce sentier orienté au sud, rendez-vous au 34. Si vous préférez rejoindre ce même chemin en contournant la clairière, rendez-vous au 118.', 1),
(241, '240', 'Le chemin longe une chaîne de petites collines, puis s\'oriente vers l\'est. Rendez-vous au 79.', 1),
(242, '241', 'Le sorcier entend votre cri et fait aussitôt volte-face, juste à temps pour projeter un nouvel éclair en direction du Glok. La tête de la créature explose aussitôt en une gerbe de flammes et son corps s\'écrase en un petit tas au pied de la colonne. Le chef des Gloks vous voit et se met à hurler : « Groh gaï oh ! Groh gaï oh ! » à ses troupes pour les inciter à repartir à l\'attaque ; mais les Gloks apeurés abandonnent bientôt les ruines pour courir se réfugier dans la forêt. Le jeune sorcier s\'essuie alors le front et s\'avance vers vous, la main tendue en signe de gratitude et d\'amitié. Rendez-vous au 349.', 1),
(243, '242', 'Le couvercle du sarcophage glisse à terre avec un bruit sourd. Vous contemplez alors les restes d\'un ancien roi qui repose parmi ses richesses. Une couronne ciselée coiffe son crâne et les mâchoires grandes ouvertes de son squelette ressemblent à l\'orifice d\'un puits sans fond. Un lointain grondement s\'élève bientôt des profondeurs de la terre. Si vous maîtrisez la Discipline Kaï du Bouclier Psychique, rendez-vous au 166. Dans le cas contraire, rendez-vous au 9.', 1),
(244, '243', 'En courant dans la forêt, vous trébuchez bientôt contre une racine et vous dévalez une pente escarpée en roulant sur vous-même. Vous atterrissez sur un petit chemin caché sous les arbres et vous y découvrez un cadavre étendu parmi les broussailles. C\'est celui d\'un Glok, une de ces créatures monstrueuses et répugnantes que les Maîtres des Ténèbres emploient à leurs services. Il y a bien longtemps, les ancêtres des Gloks servaient d\'esclaves aux Maîtres des Ténèbres et ceux-ci leur firent bâtir la ville infernale d\'Helgedad située dans les déserts volcaniques qui s\'étendent au-delà des monts Durncrag. La construction de cette cité représenta un long et douloureux cauchemar pour ces créatures, dont seules les plus fortes survécurent à la terrible épreuve. La chaleur et les vapeurs empoisonnées qui se dégageaient des terrains alentour se révélaient, en effet, mortelles pour la plupart d\'entre elles. Le monstre mort qui gît à vos pieds est, comme tous ses congénères, un descendant de ces anciens esclaves Gloks. Il a été tué par un coup d\'épée en pleine tête et une Masse d\'Armes est posée à côté de lui. Vous pouvez prendre cette arme si vous le souhaitez en n\'oubliant pas de l\'inscrire sur votre Feuille d\'Aventure. Vous poursuivrez ensuite votre chemin le long du sentier en vous rendant au 97.', 1),
(245, '244', 'Votre Sixième Sens vous révèle que vous n\'êtes pas seul et que vous courez un très grand danger. Il vous faut donc revenir à l\'air libre le plus vite possible. Rendez-vous au 93.', 1),
(246, '245', 'Des flèches viennent frapper la surface de la rivière sans vous faire le moindre mal : vous nagez sous l\'eau, en effet, et il est impossible de vous atteindre. Vous touchez bientôt la rive opposée et vous vous hissez sur la terre ferme avant de courir vous mettre à l\'abri dans la forêt. Vous êtes maintenant hors d\'atteinte des Gloks qui enfourchent à nouveau leurs Loups Maudits et reprennent leur poursuite. Rendez-vous au 190.', 1),
(247, '246', 'Lorsque l\'embarcation se trouve au beau milieu du lac, l\'homme ramène soudain sa perche et s\'avance vers vous en éclatant d\'un rire sinistre. Il rejette alors le capuchon qui lui couvre la tête et vous vous apercevez qu\'il s\'agit là d\'un terrible Drakkarim. Il va falloir le combattre. DRAKKARIM HABILETÉ: 15 ENDURANCE: 23 Si vous êtes vainqueur, rendez-vous au 197.', 1),
(248, '247', 'Le marchand a l\'air furieux. Il appelle son garde du corps et il vous faut prendre une décision rapide. Si vous souhaitez lui offrir quelque chose de plus grande valeur, parmi les objets que contient votre Sac à Dos, rendez-vous au 159. Si vous préférez combattre le garde du corps, rendez-vous au 220.', 1),
(249, '248', 'Vous parvenez au pied de la colline et vous vous hâtez de courir dans la forêt. Quelques minutes plus tard, vous découvrez un ancien sentier forestier qui forme ici une courbe à angle droit. Si vous souhaitez suivre ce sentier en direction du nord, rendez-vous au 44. Si vous préférez le suivre en direction de l\'est, rendez-vous au 300.', 1),
(250, '249', 'Vous descendez une volée de marches qui mène à une vaste crypte où vous attend un spectacle peu réjouissant. L\'étrange lumière verte est, en effet, produite par deux rangées de crânes dont chacun repose sur un socle de pierre. Ces crânes se font face de part et d\'autre de la pièce, formant ainsi une allée macabre. De l\'autre côté de la crypte, dans le mur du fond, une arcade sculptée ouvre sur un couloir qui s\'enfonce dans les ténèbres. Si vous souhaitez traverser la pièce pour aller explorer le couloir, rendez-vous au 169. Si vous préférez attaquer ces crânes, rendez-vous au 107.', 1),
(251, '250', 'Deux petites créatures au pelage ras se cachent derrière le tronc. Ce sont des Kakarmis, une race d\'animaux doués d\'intelligence qui habitent les forêts du Sommerlund. Vous avez sauté du tronc juste en face d\'eux et avant que vous ayez eu le temps de vous expliquer, les deux Kakarmis, affolés par votre apparition soudaine, s\'enfuient dans la forêt. Si vous voulez les suivre, rendez-vous au 186.', 1),
(252, '251', 'Vous avez de la chance : ils ne semblent pas vous avoir repéré. Ils avancent avec lenteur et finissent par disparaître à l\'autre bout de la corniche. Vous reprenez alors votre course. Rendez-vous au10', 1),
(253, '252', 'Au milieu d\'une clairière, trois hommes, une femme et deux enfants parlent avec vivacité en faisant de grands gestes. Ils portent en bandoulière des sacs remplis d\'objets et de vêtements. Leurs habits semblent de bonne coupe, mais ils sont sales et déchirés. Si vous souhaitez vous approcher d\'eux et leur demander qui ils sont, rendez-vous au155 Si vous préférez les éviter et poursuivre votre route, rendez-vous au70', 1),
(254, '253', 'Les Loups Maudits sont bientôt sur vous et il vous faut les combattre un par un. HABILETÉ ENDURANCE Premier LOUP MAUDIT    13   24 Deuxième LOUP MAUDIT   14   23 Troisième LOUP MAUDIT   14   22 Quatrième LOUP MAUDIT   15   21 Si vous parvenez à les tuer tous, rendez-vous au 278.', 1),
(255, '254', 'Votre Sens Kaï de l\'Orientation vous permet de distinguer plusieurs séries de traces qui partent du chemin de droite en direction du chemin de gauche. Ces traces ont été laissées par des Loups de grande taille. Ces animaux sont utilisés comme éclaireurs par les armées des Maîtres des Ténèbres. Ce sont des créatures malfaisantes et cruelles, souvent chevauchées par des Gloks. Le chemin de gauche mène vers Holmgard, celui de droite vers les monts Durncrag. Quelle direction souhaitez vous prendre ? Si vous voulez tourner à gauche, rendez-vous au 32. Si vous préférez aller à droite, rendez-vous au 146.', 1),
(256, '255', 'La créature qui vous fait face à présent est un Gourgaz, un de ces reptiles monstrueux qui infestent les profondeurs des marais de Maakenmire. Leur nourriture préférée est la chair humaine... L\'épée du Prince repose à vos pieds. Vous pouvez la ramasser et vous en servir pour combattre si vous le désirez. Le Gourgaz s\'apprête à vous frapper. Il vous faut l\'affronter jusqu\'à la mort de l\'un d\'entre vous. GOURGAZ HABILETÉ: 20 ENDURANCE:30 Ce monstre est insensible à la Discipline Kaï de la Puissance Psychique. Si vous êtes vainqueur, rendez-vous au 82.', 1);
INSERT INTO `chapitre` (`id`, `no_chapitre`, `texte`, `livre_id`) VALUES
(257, '256', 'Vous êtes réveillé par des Kraans qui poussent leurs cris sinistres dans le ciel bleu du matin. Vous vous frottez les yeux, puis vous jetez un regard à travers les feuillages qui forment un dôme au-dessus de vous : les répugnantes créatures volent en direction du nord. Vous êtes sûr que les Kraans ne vous ont pas vu, mais vous estimez préférable cependant, par simple prudence, de repartir sans délai. Vous remontez donc sur votre cheval et vous galopez sur la grand-route en direction du sud. Rendez-vous au 224.', 1),
(258, '257', 'Vous trouvez une grande porte de pierre aménagée dans le mur est, mais il semble tout à fait impossible de l\'ouvrir. Si vous voulez examiner la statue, rendez-vous au 133. Si vous préférez vous asseoir sur le trône, rendez-vous au 161.', 1),
(259, '258', 'Grâce à votre Maîtrise Psychique de la Matière, vous parvenez en quelques instants à dénouer vos liens. Vous attendez alors le moment propice pour vous enfuir et, soudain, vous vous mettez à courir à toutes jambes en direction des sous-bois touffus. Des flèches noires sifflent à vos oreilles mais, bientôt, vous vous êtes enfoncé suffisamment loin dans l\'épaisse végétation pour être sûr d\'avoir échappé à vos poursuivants. Vous avez perdu votre Sac à Dos et vos Armes, mais vous êtes indemne. Il ne vous reste plus à présent qu\'à poursuivre votre chemin parmi les arbres de la forêt. Rendez-vous au 50.', 1),
(260, '259', 'La pièce devient de plus en plus froide. Peu à peu, vous sentez une odeur de soufre puis, bientôt, les échos d\'un chant vous parviennent : il y a quelqu\'un d\'autre dans ces souterrains. Soudain, une brèche s\'ouvre dans le mur et l\'extrémité d\'un bâton noir apparaît. Un éclair bleu jaillit alors de ce bâton et vient vous frapper en pleine poitrine. Vos forces lentement vous quittent tandis que la silhouette d\'un vieil homme vêtu d\'une ample toge noire se dessine devant vous, dans une sorte de brouillard. L\'homme lève un poignard et s\'apprête à vous égorger : c\'est la dernière vision que vous emporterez de ce monde. Votre mission s\'achève ici, en même temps que votre vie.', 1),
(261, '260', 'En nageant vers la rive, vous apercevez la silhouette du soldat étendu sur la berge, les bras en croix. Vous vous approchez de lui, mais il n\'y a plus rien à faire : il s\'est rompu le cou en tombant et il est déjà mort. Or tandis que vous êtes agenouillé auprès de lui, deux Gloks bondissent soudain sur vous et il vous faut les combattre. Vous n\'avez pas d\'armes et vous devrez donc vous battre à mains nues. De ce fait, votre total d\'HABILETÉ se trouvera diminué de 4 points. Vous affronterez les deux Gloks à tour de rôle.   HABILETÉ ENDURANCE  Premier GLOK     11   18 Deuxième GLOK    12   17 Si vous êtes vainqueur, rendez-vous au 156.', 1),
(262, '261', 'Ruisselant de sueur et le souffle court vous écartez les feuillages sous lesquels vous vous êtes réfugié et vous apercevez un Kraan qui vole au-dessus du chariot. Trois Gloks, au rictus diabolique, sautent du Kraan et se laissent tomber par terre, devant les chevaux effrayés. Ils s\'avancent alors vers les enfants sans défense en brandissant leurs lances. Si vous souhaitez retourner vers le chariot pour porter secours aux enfants, rendez-vous au 208. Si vous préférez vous enfoncer plus avant dans la forêt, rendez-vous au 264.', 1),
(263, '262', 'Le marchand prend votre or et claque des doigts. Son garde du corps vous attaque aussitôt. Si vous souhaitez le combattre, rendez-vous au 191. Si vous préférez éviter l\'affrontement, vous pouvez sauter en marche de la roulotte en vous rendant au 234.', 1),
(264, '263', 'Vous suivez prudemment le cours d\'eau qui coule vers l\'est puis soudain, vous vous immobilisez : vous venez, en effet, d\'apercevoir la silhouette d\'un Kraan mort qui gît dans l\'eau tel un grand barrage noir. En restant à l\'abri du feuillage, vous avancez avec précaution vers le cadavre de la créature : trois flèches sont profondément enfoncées dans son poitrail. Un autre corps est coincé sous le Kraan mort: c\'est celui d\'un Glok qui le chevauchait. Les Gloks sont des êtres méprisables et malfaisants entièrement dévoués à la cause des Maîtres des Ténèbres. Il y a bien longtemps, les ancêtres des Gloks servaient d\'esclaves aux   Maîtres des Ténèbres et ceux-ci leur firent bâtir la ville infernale d\'Helgedad, située dans les déserts volcaniques qui s\'étendent au-delà des monts Durncrag. La construction de cette cité représenta un long et douloureux cauchemar pour ces créatures, dont seules les plus fortes survécurent à la terrible épreuve. La chaleur et les vapeurs empoisonnées qui se dégageaient des terrains alentour se révélaient, en effet, mortelles pour la plupart d\'entre eux. Le monstre mort qui repose dans le lit du cours d\'eau est l\'un des descendants de ces anciens esclaves. Apparemment, il s\'est noyé. Dans une bourse accrochée à sa ceinture, vous trouvez 3 Pièces d\'Or que vous pouvez prendre si vous le souhaitez. Vous pourrez ensuite continuer votre chemin le long du cours d\'eau en vous rendant au 70. Mais vous pouvez également quitter sa berge et prendre la direction du sud ; rendez-vous pour cela au 157.', 1),
(265, '264', 'Après avoir parcouru quelques centaines de mètres, vous entendez les échos d\'une bataille qui fait rage un peu plus loin vers l\'ouest. Si vous souhaitez vous approcher de ce champ de bataille, rendez-vous au 97. Si vous préférez poursuivre votre chemin en direction du sud, rendez-vous au6', 1),
(266, '265', 'Vous vous hâtez de disparaître dans la forêt avant que d\'autres ennemis, Loups Maudits ou Kraan, se montrent. Au bout d\'une heure de marche, vous atteignez le sommet d\'une colline rocheuse. De l\'autre côté vous attend une vision d\'espoir, mais vous êtes loin cependant d\'être au bout de vos peines, car de nombreux dangers vous menacent encore. Rendez-vous au 142.', 1),
(267, '266', 'Tandis que le serpent ailé se tord de douleur dans les derniers soubresauts de son agonie, la porte aménagée dans le mur s\'ouvre avec un déclic, découvrant un passage secret dans lequel vous vous hâtez de vous engouffrer. Aussitôt après, la porte se referme violemment derrière vous. Rendez-vous au 209.', 1),
(268, '267', 'En vous couvrant le nez d\'un pan de votre cape, vous vous approchez avec précaution du Kraan mort. L\'odeur infecte qui se dégage de son sang noir vous retourne l\'estomac, mais vous êtes décidé malgré tout à examiner son cadavre. Vous remarquez alors un sac attaché au corps du monstre par une sangle. A l\'intérieur du sac, vous trouvez un Message écrit sur une peau d\'animal. Tout au fond du sac, il y a également un Poignard. Vous pouvez conserver ce Message et ce Poignard si vous le désirez. Vous abandonnez ensuite le cadavre du monstre et vous poursuivez votre chemin en direction de l\'est. Rendez-vous au 125.', 1),
(269, '268', 'Quelques minutes plus tard, vous reprenez vos esprits tandis que l\'on vous fait boire une rasade d\'eau-de-vie. Epuisé mais heureux d\'être toujours vivant, vous avancez d\'un pas chancelant, soutenu par les soldats du Roi, en direction du camp fortifié. Rendez-vous au 288', 1),
(270, '269', 'Le cadavre du vieux fou est étendu à vos pieds. Deux soldats apparaissent alors dans l\'encadrement de la porte cochère et vous félicitent chaudement. Ils vous expliquent que le vieillard était un dément échappé d\'un asile et qu\'ils essayaient depuis deux jours de le rattraper. L\'un des soldats vous offre 10 Pièces d\'Or en guise de récompense et vous propose de vous conduire à la citadelle qui abrite le Palais du Roi. Si vous acceptez son offre, rendez-vous au 314. Si vous préférez ne compter que sur vous-même pour rejoindre la citadelle, rendez-vous au 7.', 1),
(271, '270', 'Vous entendez les hurlements furieux de l\'ennemi qui vous parviennent de l\'autre côté du lac. Il vous faut partir au plus vite avant que d\'autres Kraans apparaissent. Vous remontez donc sur votre cheval et vous poursuivez votre chemin en vous enfonçant plus avant dans la forêt. Rendez-vous au 21.', 1),
(272, '271', 'Vous vous sentez très faible. Le venin du serpent circule à présent dans votre sang et vos muscles se raidissent, puis se détendent. Vos jambes bientôt se dérobent et vous vous enfoncez alors dans la vase pestilentielle du marécage qui vous engloutit en quelques instants. Votre vie vient de s\'achever.', 1),
(273, '272', 'Vous vous hâtez le long du chemin tout en surveillant le ciel au-dessus de vous. Vous savez que ce sentier mène au Bois des Brumes ; c\'est là que s\'est installée, depuis presque cinquante ans, une famille qui fait le commerce du charbon de bois. Les membres de la famille vivent dans des huttes bâties en cercle au milieu d\'une clairière. Vingt minutes plus tard, vous parvenez à la lisière de cette clairière. Les huttes, contrairement à l\'habitude, paraissent étrangement calmes, et on ne voit plus trace de la fumée qui envahit ordinairement les environs. C\'est cette fumée   qui a donné à l\'endroit son nom de Bois des Brumes, et son absence vous semble tout à fait insolite. Si vous maîtrisez la Discipline Kaï de l\'Orientation, rendez-vous au 134. Dans le cas contraire, vous dégainez votre arme et vous vous approchez silencieusement des huttes. Rendez-vous alors au 305.', 1),
(274, '273', 'Les fortifications du camp militaire dressé autour de la ville vous apparaissent un peu plus loin. Des péniches amarrées les unes aux autres sont alignées en travers du cours d\'eau, formant ainsi une barricade flottante. Vous apercevez également des soldats qui courent le long des fortifications et vous entendez, en provenance de l\'ouest, les échos lointains d\'une bataille. Si vous voulez vous approcher de ces péniches, rendez-vous au 179. Si vous préférez vous cacher à l\'abri des arbres, rendez-vous au 51.', 1),
(275, '274', 'Dans votre hâte de fuir l\'ennemi, vous vous prenez le pied dans la racine d\'un arbre et vous tombez tête la première en soulevant un nuage de poussière et de feuilles. Vous vous relevez aussitôt et vous courez vous réfugier dans la forêt, au pied de la colline. Au bout de dix minutes de cette fuite éperdue, vous vous apercevez que vous avez perdu vos Armes lors de votre chute. C\'est fâcheux, mais au moins, vous êtes vivant et vous avez toujours votre Sac à Dos. Faisant contre mauvaise fortune bon cœur, vous poursuivez votre chemin en vous enfonçant plus avant parmi les arbres. Rendez-vous au 331.', 1),
(276, '275', 'Vous avez suivi ce sentier sinueux pendant environ dix minutes lorsque vous entendez soudain des battements d\'ailes au-dessus de vous. Vous levez les yeux et vous apercevez alors un immense Kraan qui s\'approche de l\'endroit où vous êtes. La créature vient du nord et, bientôt, ses grandes ailes noires projettent une ombre gigantesque sur le feuillage des arbres. Deux êtres armés de longues lances chevauchent le monstre : ce sont des Gloks, de petites créatures d\'une grande laideur, animées de haine et vouées à la malfaisance. Autrefois, il y a de cela plusieurs siècles, les Gloks servaient d\'esclaves aux Maîtres des Ténèbres, et ceux-ci leur firent bâtir la cité infernale d\'Helgedad, située dans les déserts volcaniques qui s\'étendent au-delà des monts Durncrag. La construction de cette ville représenta une longue et douloureuse épreuve pour ces créatures, dont seules les plus fortes survécurent aux vapeurs empoisonnées qui se dégageaient des terrains alentour. Les deux monstres portés par le Kraan sont des descendants de ces anciens esclaves. Lorsque le Kraan passe au-dessus de votre tête, vous vous cachez sous un arbre, le cœur battant, en priant le ciel que le redoutable trio ne vous ait pas repéré. Utilisez la Table de Hasard pour obtenu un chiffre. Si vous tirez un chiffre entre 0 et 4, rendez-vous au 345. Entre 5 et 9, rendez-vous au 74.', 1),
(277, '276', 'Vous empoignez votre Hache et vous vous frayez un chemin dans l\'enchevêtrement de racines et de branches noueuses qui obstrue le chemin. Bientôt, votre cape est déchirée en plusieurs endroits et votre jambe droite douloureusement meurtrie, juste au-dessus du genou. Vous perdez 1 point d\'ENDURANCE avant de vous rendre au 213.', 1),
(278, '277', 'Lorsque vous reprenez conscience, vous êtes étendu au pied d\'une pente raide, parmi les hautes herbes. Vous n\'apercevez ni votre Arme ni votre Sac à Dos, et votre tête vous fait atrocement souffrir. Vous êtes incapable de dire combien de temps vous êtes resté sans connaissance, mais il est clair qu\'il vous faut repartir sans plus attendre. Vous vous relevez donc aussitôt et vous retrouvez votre Sac à Dos intact. Votre Arme, en revanche, est brisée et ne peut plus vous être d\'aucune utilité. Rayez-la de votre Feuille d\'Aventure (si vous possédez plus d\'une arme, seule l\'une d\'elles est cassée et vous pouvez choisir laquelle). Une fois votre Feuille d\'Aventure modifiée, vous ramassez votre Sac à Dos ainsi que l\'Arme qui vous reste éventuellement et vous poursuivez votre chemin dans la forêt qui s\'étend devant vous. Rendez-vous au 113.', 1),
(279, '278', 'Dès la fin du combat, vous vous lancez au galop sur le sentier qui mène à une prairie au-delà de laquelle vous apercevez la grand-route reliant le port de Toran à la ville de Holmgard, but de votre voyage. Si tout se passe bien, vous devriez avoir gagné la capitale aux premières heures de la matinée. Rendez-vous au 149.', 1),
(280, '279', 'Vous grimpez sur l\'amas de pierrailles qui s\'entasse devant la grotte à l\'intérieur de laquelle vous vous engouffrez en prenant soin d\'en boucher l\'entrée derrière vous à l\'aide d\'un gros rocher. Quelques minutes plus tard, vous apercevez les Gloks qui s\'approchent de la grotte, leurs petits yeux jaunes et cruels scrutant chaque fissure s\'ouvrant au flanc de la colline. Ils sont si près de vous que vous vous attendez à être découvert d\'une minute à l\'autre. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 6, rendez-vous au 112. Entre 7 et 9, rendez-vous au 96.', 1),
(281, '280', 'Alors que vous commencez votre ascension, vous entendez des battements d\'ailes qui s\'approchent de vous en provenance de l\'ouest. Ce sont des Kraans ! D\'après le bruit qu\'ils font, vous estimez leur nombre à dix au moins, peut-être davantage. Vous maudissez alors votre malchance, car le flanc de la colline n\'offre aucun abri, et, si on vous attaque au cours de cette escalade difficile, vous ne pourrez pratiquement pas vous défendre: il est en effet impossible de rester debout sur cette pente escarpée. Si vous choisissez de dégainer votre arme et de rester complètement immobile en espérant que les Kraans ne vous verront pas, rendez-vous au 327. Si vous préférez vous hâter de redescendre la colline pour vous mettre à l\'abri dans le tunnel, rendez-vous au 170.', 1),
(282, '281', 'Tandis que vous courez parmi les arbres, vous entendez derrière vous les hurlements horribles des Gloks qui vous poursuivent. Bientôt, la forêt s\'éclaircit et vous apercevez un peu plus loin une colline rocailleuse. Si vous souhaitez quitter l\'abri des arbres et grimper le flanc de la colline, rendez-vous au 311. Si vous préférez changer de direction en continuant à courir dans la forêt, rendez-vous au 77.', 1),
(283, '282', 'En portant votre regard au-delà de la foule, vous remarquez que l\'une des boutiques qui font face à la Porte Principale est une officine de médecin. Un plan audacieux germe alors dans votre esprit. Vous vous frayez un chemin parmi la multitude et vous traversez la rue. Vous vous glissez ensuite dans la boutique du médecin : l\'endroit semble désert à l\'exception d\'un perroquet aux vives couleurs enfermé dans une cage suspendue près de la vitrine. Vous enfilez rapidement une blouse blanche et vous ramassez quelques fioles de potions diverses, puis vous retraversez la rue jusqu\'à la Porte Principale. « C\'est pour une urgence ! vous exclamez-vous lorsque les sentinelles vous arrêtent à l\'entrée. La femme du cuisinier du roi est sur le point d\'accoucher ! » Les soldats hésitent un instant, mais vous affirmez qu\'il s\'agit bel et bien d\'une urgence et ils finissent par vous laisser entrer. L\'un des battants de la haute porte s\'entrouvre d\'une cinquantaine de centimètres et les gardes vous poussent d\'un geste brusque par l\'entrebâillement. Vous vous retrouvez alors dans la cour intérieure de la citadelle. Rendez-vous au 11.', 1),
(284, '283', 'Vous êtes à trois mètres environ de l\'étranger lorsque son corbeau se met à croasser pour l\'avertir de votre approche. L\'homme fait aussitôt volte-face et vous vous immobilisez saisi de terreur : car en fait ce n\'est pas un homme que vous avez   devant vous, mais un Vordak, l\'un des plus redoutables lieutenants des Maîtres des Ténèbres. Cette créature appartient au monde des morts vivants et vous allez devoir la combattre dans un affrontement sans merci. La surprise de votre attaque vous permet d\'ajouter 2 points à votre total d\'HABILETÉ lors du premier assaut. Dès le deuxième assaut, en revanche, et au cours des suivants, vous devrez réduire de 2 points ce même total d\'HABILETÉ à moins que vous ne maîtrisiez la Discipline Kaï du Bouclier Psychique. Le Vordak vous attaque, en effet, en utilisant simultanément deux armes redoutables : une énorme Masse d\'Armes et sa formidable Puissance Psychique. VORDAK HABILETÉ: 17 ENDURANCE: 25  Si vous êtes vainqueur, rendez-vous au 123.', 1),
(285, '284', 'Votre traversée du Cimetière n\'ira pas sans difficultés, car le sol en est inégal et recouvert de broussailles épineuses qui déchirent votre cape et vous écorchent les jambes. L\'air est lourd et immobile, des vapeurs pestilentielles s\'exhalent des cryptes entrouvertes et un murmure lancinant parvient faiblement jusqu\'à vous, une sorte de chuchotement ininterrompu, venu de nulle part et de partout à la fois. Vous vous approchez avec précaution d\'un espace ouvert entre deux anciennes colonnes et vous écartez les broussailles en ayant pris soin d\'envelopper vos mains dans un pan de votre cape. Or, soudain, le sol se dérobe sous vos pas et vous tombez en quelque mystérieuse profondeur dans un éboulement de terre et de cailloux. Rendez-vous au 71.', 1),
(286, '285', 'Avec un craquement sinistre, la pierre que vous avez lancée fracasse la tête du Glok. La créature s\'affaisse, puis tombe à terre, au bas de la colonne. Enchanté d\'avoir réussi votre coup, vous vous précipitez en avant pour porter secours au jeune sorcier. Rendez-vous au 325.', 1),
(287, '286', 'Ces messagers de la mort que sont les Loups Maudits, trop heureux de vous annoncer la vôtre, vous encerclent et vous attaquent. Vous vous défendez vaillamment, mais c\'est inutile car ils sont trop nombreux. Votre corps bientôt se vide de son sang et l\'ombre éternelle vous envahit. Avant de fermer les yeux, vous apercevez les tours de Holmgard qui scintillent au soleil : c\'est la dernière vision que vous emporterez de ce monde. Votre mission a échoué.', 1),
(288, '287', 'Le sentier disparaît bientôt dans un enchevêtrement de ronces et de branches basses. Si vous souhaitez retourner à la bifurcation et prendre la direction de l\'est, rendez-vous au 13. Si vous préférez vous frayer un chemin dans les épaisses broussailles en poursuivant dans la même direction, rendez-vous au 330.', 1),
(289, '288', 'Lorsque vous atteignez la palissade du camp fortifié, les grandes portes de chêne s\'ouvrent sur votre passage et vous êtes conduit à l\'intérieur de l\'enceinte militaire. Un sergent, aux vêtements tachés de sang et déchirés dans la bataille, appelle un officier qui se tourne vers vous et reconnaît aussitôt votre cape de Seigneur Kaï. « Où sont les autres Seigneurs Kaï, My Lord ? demande-t-il. Nous avons désespérément besoin de leur science. Les Maîtres des Ténèbres mettent notre armée à rude épreuve et nos pertes sont lourdes. » Vous révélez alors à votre interlocuteur le sort qu\'ont subi vos compagnons et vous l\'informez de la mission dont vous vous êtes chargé : prévenir le Roi. L\'officier fait aussitôt signe à un soldat d\'amener deux chevaux. Un instant plus tard, vous galopez tous deux en direction des hautes murailles de Holmgard. Rendez-vous au 129.', 1),
(290, '289', 'Les deux soldats ont l\'air fatigué et inquiet. Ils tiennent leur hallebarde devant eux, les mains crispées sur la hampe, et repoussent systématiquement quiconque veut s\'approcher de la porte. Une femme en fureur attaque alors l\'un d\'eux, lui martelant la poitrine de ses poings, et le fait tomber sur l\'autre garde. Tous trois s\'écroulent aussitôt les uns sur les autres dans un enchevêtrement de bras et de jambes battant l\'air en tous sens. C\'est là votre chance, et vous vous précipitez vers la porte dont vous parvenez à déverrouiller les deux vantaux. Un instant plus tard, vous vous êtes glissé dans l\'enceinte de la citadelle et vous vous retrouvez à l\'entrée d\'une cour intérieure. Tout a été si rapide qu\'aucune des deux sentinelles ne vous a vu. Rendez-vous au 139.', 1),
(291, '290', 'A l\'intérieur de la longue boîte, vous trouvez un Bâton enveloppé de cuir. Vous pouvez le prendre si vous le désirez. Vous refermez ensuite la boîte et vous redescendez l\'échelle en prenant soin de ne poser les pieds que sur les barreaux encore solides. Inscrivez, le cas échéant, votre nouvelle Arme sur votre Feuille d\'Aventure et rendez-vous au 140.', 1),
(292, '291', 'Les cadavres recroquevillés des deux Gloks reposent à vos pieds. Vous les fouillez rapidement et vous découvrez dans leurs vêtements 6 Couronnes, 2 Lances et 1 Poignard. Vous pouvez garder l\'Or et prendre au choix le Poignard ou l\'une des Lances. Inscrivez dans ce cas votre nouvelle acquisition sur votre Feuille d\'Aventure. Le Kraan s\'est enfui pendant le combat, et le sentier est à présent désert. Vous calez votre Sac à Dos sur vos épaules et vous reprenez votre chemin. Rendez-vous au 272.', 1),
(293, '292', 'La dernière sensation que vous emporterez de ce monde n\'a rien de réjouissant : vous êtes, en effet, littéralement englouti dans d\'épaisses ténèbres où vous mènerez désormais une existence d\'esclave dans un univers hors du temps et de l\'espace. Votre maître pour l\'éternité est une entité maléfique dont l\'origine se perd dans la nuit des temps. Votre aventure vient de prendre fin.', 1),
(294, '293', 'Banedon quitte les ruines du temple en vous adressant un signe de la main, et vous poursuivez vous-même votre route en vous enfonçant dans la forêt touffue qui s\'étend devant vous. Quelques centaines de mètres plus loin, vous sentez des regards se poser sur vous. Des yeux jaunes brillent dans les sous-bois et, soudain, une flèche noire vous frôle la tête. Ce sont des Gloks qui vous ont tendu une embuscade, et il vous faut prendre la fuite aussi vite que possible. Rendez-vous au 281.', 1),
(295, '294', 'Après être resté sous l\'eau aussi longtemps que vous le permettait votre capacité respiratoire, vous refaites enfin surface et vous constatez que les Gloks se trouvent loin derrière vous. Vous avez perdu Arme(s) et Sac à Dos, mais au moins, vous êtes vivant. Vous sortez alors de cette eau boueuse et vous poursuivez votre chemin à l\'abri des arbres qui bordent la rive droite du cours d\'eau. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 2, rendez-vous au 230. Entre 3 et 6, rendez-vous au 190. Entre 7 et 9, rendez-vous au 321.', 1),
(296, '295', 'Vous avez repris votre marche depuis un quart d\'heure environ lorsque une flèche noire siffle soudain à vos oreilles et vient se planter dans un arbre juste devant vous. Instinctivement, vous vous baissez en dégainant votre arme. Si vous souhaitez rester où vous êtes pour essayer de repérer celui qui vous a tiré dessus, rendez-vous au 185. Si vous préférez courir vous réfugier dans les épaisses broussailles qui vous entourent, rendez-vous au 92.', 1),
(297, '296', 'Vous sentez quelque chose d\'anormal. Pourquoi cet homme est-il resté seul dans la forêt, alors que la guerre fait rage alentour et que les Maîtres des Ténèbres approchent ? Vous percevez autour de lui une étrange aura maléfique et vous déclinez son offre, poursuivant votre chemin sans ajouter un mot. L\'homme n\'insiste pas. Rendez-vous au 90.', 1),
(298, '297', 'Mettant en pratique vos talents de chasseur, vous vous frayez lentement un passage à travers l\'épaisse végétation sans vous faire repérer. Moins d\'une minute plus tard, vous vous trouvez derrière le poteau auquel le soldat est attaché. Le bois a été allumé à ses pieds et un nuage de fumée commence déjà à envelopper le malheureux. Vous empoignez alors votre Hache et vous vous ruez en avant, profitant de la fumée pour vous dissimuler aux regards. D\'un seul coup de Hache, vous coupez la corde qui retient le soldat prisonnier et vous l\'emmenez aussitôt à l\'abri de la forêt. Tandis que vous avancez parmi les arbres, les Gloks se mettent à pousser des cris : ils viennent de s\'apercevoir que leur victime s\'est littéralement volatilisée dans un nuage de fumée. Rendez-vous au 117.', 1),
(299, '298', 'L\'oiseau tourne lentement la tête vers vous et se met à vous injurier. Un instant plus tard, il s\'envole au-dessus des arbres et disparaît bientôt. Ce que vous venez d\'entendre ne vous laisse plus aucun doute : le corbeau était un éclaireur au service des Maîtres des Ténèbres et il ne va sans doute pas tarder à les informer de l\'endroit où vous vous trouvez. Si vous souhaitez poursuivre votre chemin le long du même sentier, rendez-vous au 121. Si vous préférez quitter ce sentier et vous enfoncer dans la forêt, rendez-vous au 38.', 1),
(300, '299', 'Vous vous apercevez bientôt que vous venez d\'aborder une région marécageuse. Continuer dans cette direction serait dangereux et ralentirait votre avance. Si vous souhaitez poursuivre malgré tout, rendez-vous au 227. Si vous préférez changer de direction et retrouver un terrain plus ferme, rendez-vous au 95.', 1),
(301, '300', 'Vous avez marché pendant plus d\'une heure en surveillant le ciel de peur de voir apparaître des Kraans. Par deux fois, vous avez aperçu leurs silhouettes caractéristiques qui se dessinaient au loin, mais la promptitude de vos réflexes vous a gardé d\'être repéré. Cette longue marche vous a affamé cependant et il vous faut prendre un Repas, sinon vous perdrez 3 points d\'ENDURANCE. Vous poursuivrez ensuite votre chemin en vous rendant au 13.', 1),
(302, '301', 'Votre Sens de l\'Orientation vous indique que le sentier orienté à l\'ouest aboutit à un cul-de-sac. Vous choisissez donc d\'emprunter le chemin menant au sud et vous vous rendez pour cela au 27.', 1),
(303, '302', 'Utilisez la Table de Hasard pour obtenir un chiffre : si ,vous tirez un chiffre entre 0 et 2, rendez-vous au 110. Entre 3 et 9, rendez-vous au 285.', 1),
(304, '303', 'La forêt en cet endroit est clairsemée et le terrain vallonné. Aussi n\'avez-vous guère de possibilité de vous mettre à couvert en cas d\'attaque aérienne. Vous avancez donc aussi vite que possible d\'arbre en arbre pour éviter d\'être repéré par des Kraans mais vous entendez bientôt derrière vous des grognements caractéristiques: ce sont des Loups Maudits qui galopent à quelque distance. Si vous maîtrisez la Discipline Kaï du Camouflage, rendez-vous au 237. Sinon, rendez-vous au 72.', 1),
(305, '304', 'La Pierre dégage une intense chaleur et vous brûle la main. Vous perdez aussitôt 2 points d\'ENDURANCE. Vous ramassez la Pierre Précieuse en enveloppant votre main dans un pan de votre cape de Seigneur Kaï et vous la glissez dans votre Sac à Dos. Une Pierre de cette taille doit valoir une bonne centaine de Couronnes. Entre-temps, les Gloks se sont rapprochés et, bientôt, leurs flèches sifflent à vos oreilles alors que vous courez vous réfugier à l\'abri de la forêt. Rendez-vous au 2.', 1),
(306, '305', 'Par la porte ouverte de la première hutte, vous apercevez le corps d\'un homme étendu face contre terre, sur le sol de pierre brute. On l\'a assassiné à l\'aide d\'une lance, sans aucun doute. Tous les   meubles et les objets que contenait la hutte ont été détruits : il ne reste plus rien d\'intact. Ce forfait porte la marque des Gloks : leur goût du vandalisme est, en effet, bien connu. En entrant dans les autres huttes, vous contemplez un spectacle semblable de meurtre et de destruction. Dans la dernière hutte, vous découvrez une Lance de Glok, ce qui confirme vos soupçons. Vous pouvez la garder si vous le désirez en l\'inscrivant sur votre Feuille d\'Aventure. Plus décidé que jamais à mener à bien votre mission, vous poursuivez votre chemin le long du sentier. Rendez-vous au 105.', 1),
(307, '306', 'Les échos de la bataille s\'évanouissent peu à peu derrière vous. Et soudain, vous vous retrouvez plaqué au sol : trois Drakkarims, cachés dans le feuillage d\'un arbre, juste au-dessus de votre tête, vous ont sauté dessus. Il est inutile d\'essayer de lutter : ils sont trop nombreux et trop robustes pour espérer pouvoir leur échapper. Vous les entendez alors grogner de plaisir tandis qu\'ils lèvent leurs lances pour vous achever : c\'est la dernière vision que vous emporterez de ce monde. Votre mission s\'achève ici, en même temps que votre vie.', 1),
(308, '307', 'Vous n\'avez aucune difficulté à atteindre la cabane et, tandis que vous escaladez l\'arbre, des souvenirs d\'enfance vous reviennent en mémoire : vous vous rappelez le temps où, tout jeune garçon, vous montiez également aux arbres, non loin de la ville de Toran, pour aller cueillir des fruits ou admirer la campagne environnante. Vous ouvrez la porte de la cabane et vous tombez nez à nez avec un vieil ermite recroquevillé dans un coin de la pièce. Une expression d\'intense soulagement apparaît sur son visage lorsqu\'il reconnaît votre cape de Seigneur Kaï. Il vous raconte alors que toute la région est envahie par des Gloks et qu\'il a dénombré plus de quarante Kraans volant au-dessus de sa maison dans les trois heures qui ont précédé. Ils se dirigeaient tous vers l\'est. Il s\'approche ensuite d\'un buffet et vous apporte       une assiette de fruits. Vous le remerciez et vous rangez les fruits dans votre Sac à Dos. Ils représentent l\'équivalent d\'un Repas, notez-le sur votre Feuille d\'Aventure. L\'ermite vous montre également un magnifique Marteau de Guerre qu\'il pose sur une table, près de la porte. « Vous en avez plus besoin que moi, Seigneur Kaï, dit-il. Prenez ce Marteau si vous le désirez, c\'est une Arme à laquelle vous pourrez vous fier. » Vous n\'aurez le droit de prendre ce Marteau de Guerre qu\'à la condition de l\'échanger contre une autre Arme que vous possédez déjà, car vous ne pouvez laisser l\'ermite sans aucune défense contre l\'ennemi. Faites, le cas échéant, les ajustements nécessaires sur votre Feuille d\'Aventure. Vous remerciez alors le vieil homme et vous redescendez de l\'arbre pour continuer votre route. Rendez-vous au 213.', 1),
(309, '308', 'La porte de l\'écurie est ouverte et vous entendez à l\'intérieur la respiration d\'un cheval. Or, soudain, le cheval sent votre présence et, pris de peur, se précipite au-dehors en vous projetant à terre au passage. Vous perdez 1 point d\'ENDURANCE. Si vous maîtrisez la Discipline Kaï de la Communication Animale et que vous souhaitez en faire usage, rendez-vous au 122. Sinon, vous vous lancerez à la poursuite du cheval en vous rendant au 233.', 1),
(310, '309', 'Vous avez à peine fait dix pas lorsque le corbeau se met à croasser pour avertir l\'étranger de votre présence. Le personnage fait alors volte-face et lance un cri perçant qui vous glace le sang et vous noue l\'estomac sous l\'effet d\'une peur panique. Car c\'est un Vordak que vous avez devant vous, un des plus cruels lieutenants des Maîtres des Ténèbres. C\'est également une créature qui appartient au monde des morts vivants. En quelques secondes, une horde de Gloks apparaissent à ses côtés et vous attaquent. Vous vous défendez vaillamment, mais vous succombez sous le nombre. Et bientôt, les doigts squelettiques du   Vordak se referment inexorablement sur votre gorge : c\'est la dernière sensation que vous emporterez de ce monde. Votre mission s\'achève ici en même temps que votre vie.', 1),
(311, '310', 'Accrochée au mur d\'un bâtiment, de l\'autre côté de la rue, une pancarte délavée porte l\'inscription suivante :  Vous savez que les sessions du tribunal se tiennent à l\'intérieur de la citadelle et vous êtes certain que la rue orientée à l\'ouest y mène directement. Rendez-vous au 37.', 1),
(312, '311', 'Le flanc de la colline est escarpé et le sol, meuble et glissant. Vous jetez un coup d\'œil par-dessus votre épaule et vous apercevez deux Gloks qui surgissent de la forêt. Ils entreprennent aussitôt d\'escalader la colline pour tenter de vous rattraper. Arrivé à mi-chemin, vous repérez une grotte à votre droite. L\'entrée en est presque entièrement cachée par un glissement de terrain qui a formé comme un mur de rocailles. Si vous souhaitez vous cacher dans cette grotte, rendez-vous au 279. Si vous préférez continuer à grimper le flanc de la colline, rendez-vous au 47. Enfin, si vous maîtrisez la Discipline Kaï du Camouflage, rendez-vous au 324.', 1),
(313, '312', 'Vous maudissez votre mauvaise fortune. Il semble que la nature, tout autant que les Maîtres des Ténèbres, ait juré votre perte, mais votre détermination reste inébranlable: vous êtes plus que jamais décidé à atteindre le Palais du Roi. Vous essuyez la boue   de vos vêtements et vous continuez votre chemin dans la forêt. Rendez-vous au 299.', 1),
(314, '313', 'Vous essuyez votre Arme du sang fétide qui la souille et vous vous hâtez de descendre le flanc de la colline avant que le Kraan aperçoive les cadavres de ses cavaliers. A plusieurs reprises, vous perdez l\'équilibre, dégringolant de plusieurs mètres à la fois. Ces chutes répétées occasionnent des écorchures et des contusions qui vous coûtent 1 point d\'ENDURANCE. Rendez-vous au 248.', 1),
(315, '314', 'Il vous faut presque une heure pour atteindre la citadelle. Lorsque vous arrivez, vous constatez qu\'il règne dans les rues de la ville panique et confusion. Le soldat qui vous escorte s\'approche des gardes à l\'entrée principale de la citadelle et leur explique que vous devez à tout prix voir le Roi. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 6, rendez-vous au 341. Entre 7 et 9, rendez-vous au 98.', 1),
(316, '315', 'Enveloppé dans des vêtements de femme, vous trouvez un petit Sac de Velours qui contient 6 Pièces d\'Or et un morceau de Savon Parfumé. Vous pouvez prendre le Savon et l\'Or en les inscrivant sur votre Feuille d\'Aventure et vous poursuivrez ensuite votre chemin. Rendez-vous au 213.', 1),
(317, '316', 'Dans votre hâte de fuir l\'ennemi, vous vous prenez le pied dans une racine et vous tombez tête la première en soulevant un nuage de poussière et de feuilles. Vous atterrissez dans les broussailles, au pied de la colline et vous vous relevez aussitôt pour courir vous réfugier dans la forêt après avoir ramassé votre Arme. Le Kraan qui tournoyait dans le ciel a disparu, mais vous apercevez, au sommet de la colline, la silhouette de deux Gloks auxquels il vous faut échapper. Vous essuyez la poussière de votre visage et vous vous apercevez alors que vous avez une grosse bosse sur le front qui vous fait grimacer de douleur lorsque vous passez la main dessus. Sans perdre une minute, vous prenez vos jambes à votre cou et vous disparaissez dans l\'épaisseur de la forêt. Rendez-vous au 331.', 1),
(318, '317', 'Instinctivement, vous plongez de côté et vous atterrissez sur le sol de pierre. La promptitude de vos réflexes vient de vous sauver la vie, car au même moment un énorme bloc de granité s\'est écrasé sur les marches de l\'escalier, juste devant la porte ! Quelque peu malmené, mais indemne, vous vous relevez et vous regardez au plafond : un rayon de lumière grise filtre à travers l\'ouverture ménagée par la chute du bloc de pierre et diffuse dans la pièce une faible clarté. Vous pouvez même apercevoir un coin de ciel nuageux et quelques ronces enchevêtrées. Vous vous hissez alors hors du caveau et vous vous dirigez aussi vite que possible vers la porte située au sud de la nécropole. Au loin, vous apercevez la palissade en rondins du camp fortifié dressé autour de la ville. Rendez-vous au 61.', 1),
(319, '318', 'Deux soldats et un sergent se mettent à courir dans votre direction en pointant sur vous leurs arbalètes. Lorsqu\'ils s\'approchent, ils reconnaissent votre cape de Seigneur Kaï et une expression de soulagement apparaît aussitôt sur leurs visages. «   Où sont donc les autres Seigneurs Kaï, My Lord ? demande le sergent. Nous avons grand besoin de leur science car les Maîtres des Ténèbres nous mènent la vie dure et nos pertes sont élevées. » Vous révélez à votre interlocuteur le sort malheureux qu\'ont connu vos compagnons et vous l\'informez de la mission urgente qui vous incombe. Il vous amène alors sur la barricade de péniches et vous confie à un officier qui vous donne un cheval et vous conduit aussitôt vers les hautes murailles de la capitale. Rendez-vous au 129.', 1),
(320, '319', 'La gluante créature laisse échapper un long cri d\'agonie et s\'écroule sur le sol. Vous êtes proche de la panique et vous vous hâtez de vous relever en arrachant des mâchoires du monstre ce que vous pensez être votre ceinture. Vous apercevez une lumière au loin et vous courez à toutes jambes dans cette direction. Lorsque, enfin, vous vous retrouvez à l\'air libre, vous vous laissez tomber à terre parmi les feuilles mortes et vous essayez de reprendre votre souffle en haletant désespérément. Dès que vous pouvez à nouveau respirer normalement, vous vous asseyez et vous remarquez alors que votre ceinture est toujours nouée autour de votre taille : finalement, vous ne l\'aviez pas perdue dans la bagarre. Ce que vous avez arraché aux mâchoires de la créature est, en fait, une lanière de cuir à laquelle sont attachés une Bourse et un Poignard dans son fourreau. En ouvrant la Bourse, vous trouvez 20 Pièces d\'Or. Vous pouvez prendre ces Pièces et le Poignard si vous le désirez. Faites les modifications nécessaires sur votre Feuille d\'Aventure. Vous vous sentez mieux à présent : vous ramassez donc vos affaires et vous poursuivez votre route vers l\'est en vous enfonçant dans la forêt. Rendez-vous au 157.', 1),
(321, '320', 'Tandis que vous courez à terrain découvert en direction de la forêt, un Kraan fond sur vous et vous agrippe le bras. Avant même que vous ayez pu esquisser un geste pour vous défendre, il s\'envole à nouveau et s\'éloigne à tire-d\'aile en lançant un cri à vous glacer le sang. Vous parvenez à pénétrer dans la forêt, mais vous avez perdu 2 points d\'ENDURANCE. Rendez-vous au 264.', 1),
(322, '321', 'Vous marchez pendant presque une heure le long de la berge. La rivière est sinueuse, et vous tournez sans cesse d\'un côté et d\'autre. Enfin, au détour d\'un méandre, vous entendez les faibles échos d\'une bataille et vous escaladez avec précaution un monticule rocailleux afin de pouvoir mieux observer les alentours. Rendez-vous au 273.', 1),
(323, '322', 'Au bout de ce qui vous semble une éternité, vous parvenez enfin au sommet de la colline escarpée. Derrière vous, les ruines du monastère sont encore visibles. Au nord, une colonne de fumée d\'un noir de jais s\'élève haut dans le ciel et de petites flammes orange dansent à sa base : c\'est le port de Toran qui est en feu, et ce spectacle vous déchire le cœur. Soudain, un cri perçant au-dessus de votre tête vous avertit qu\'un Kraan se prépare à vous attaquer. Il est à une trentaine de mètres de distance et il fond sur vous, prêt à tuer. Si vous souhaitez l\'attendre pour le combattre, rendez-vous au 17. Si vous préférez prendre la fuite en vous précipitant au bas de la colline, sur le flanc opposé, rendez-vous au 89.', 1),
(324, '323', 'Au sommet de la tour, vous pouvez voir loin autour de vous, dans toutes les directions. Au nord, à bonne distance, une colonne de fumée d\'un noir de jais s\'élève haut dans le ciel et de petites flammes orange dansent à sa base : c\'est la ville de Toran qui est en feu et ce spectacle vous déchire le cœur. En provenance du sud-ouest, le vent apporte les échos d\'une bataille : les combats se déroulent à une dizaine de kilomètres tout au plus de l\'endroit où vous vous trouvez. Sur le plancher de la Tour de Guet, une boîte oblongue est posée dans un coin. Si vous souhaitez ouvrir cette boîte, rendez-vous au 290. Si vous préférez quitter la tour en descendant l\'échelle et en prenant soin de ne poser les pieds que sur les échelons encore solides, rendez-vous au 140.', 1),
(325, '324', 'Vous rabattez votre capuchon sur votre tête et vous vous laissez tomber derrière les monticules de pierre qui s\'entassent devant l\'entrée de la grotte. Retenant votre souffle, vous vous roulez en boule en vous recouvrant entièrement de votre cape verte de Seigneur Kaï. Quelques minutes plus tard, les Gloks grimpent sur l\'amas de pierres et scrutent de leurs petits yeux jaunes chaque crevasse qui s\'ouvre au flanc de la colline. Puis, lançant force jurons dans leur étrange dialecte, ils redescendent du tas de pierres et poursuivent leur ascension en direction du sommet de la colline. Vous remerciez alors silencieusement vos Maîtres Kaï de vous avoir enseigné la Science du Camouflage, car la mise en pratique de cette discipline vient probablement de vous sauver la vie. Si vous souhaitez explorer la grotte, rendez-vous au 33. Si vous préférez quitter les lieux et redescendre le flanc de la colline de peur que les Gloks ne reviennent, rendez-vous au 248.', 1),
(326, '325', 'En vous voyant apparaître, le chef des Gloks se met à hurler : « Groh Gaï oh ! Groh gaï oh !» à l\'adresse de ses compagnons qui s\'enfuient des ruines et courent se réfugier dans la forêt. L\'officier Glok, vêtu de noir, se tourne alors vers vous en brandissant le poing. « Rob Gaï ohrringh âârh oho key ! Pamark hélbutt ! » s\'écrie-t-il avec fureur avant de prendre la fuite à son tour. Vous jetez ensuite un coup d\'oeil sur le champ de bataille : plus de quinze cadavres de Gloks sont étendus parmi les ruines du temple de Raumas. Le jeune sorcier essuie son front ruisselant de sueur et s\'avance vers vous, la main tendue en signe d\'amitié. Rendez-vous au 349.', 1),
(327, '326', 'Vous introduisez avec précaution la Clé d\'Or dans la serrure et vous la tournez dans le sens des aiguilles d\'une montre. Vous entendez alors un faible déclic : le mécanisme a fonctionné. Vous retirez ensuite la broche et la lourde porte de granité pivote bientôt sur ses gonds, s\'ouvrant vers vous. La lumière grise du cimetière se diffuse dans le caveau et vous parvenez à sortir. L\'ouverture est, cependant, envahie de ronces et vous vous écorchez le visage et les mains en vous hissant au-dehors. Lorsque, enfin, vous vous retrouvez à l\'air libre, la porte du caveau se referme lentement derrière vous et un rire cruel, inhumain, semble aussitôt s\'élever des profondeurs de la terre, juste sous vos pieds. Saisi de terreur, vous prenez vos jambes à votre cou et vous vous précipitez vers la porte sud de la ville, en traversant aussi vite que possible cette sinistre nécropole. Rendez-vous au 61.', 1),
(328, '327', 'Quelques minutes plus tard, vous voyez les Kraans apparaître au-dessus d\'une petite colline située derrière vous. Vous en dénombrez au moins seize qui sont chacun montés par deux Gloks. Ces derniers sont armés de lances et coiffés de casques de   bronze. Vous les entendez aussitôt pousser des grognements satisfaits : ils vous ont repéré... Vous bondissez alors en direction de l\'entrée du tunnel quelque huit mètres plus bas, mais votre botte se prend dans un buisson et vous tombez de tout votre long. Dans votre chute, vous avez lâché votre Arme et vous êtes désormais à la merci de vos adversaires. Fort heureusement, votre fin est rapide: le premier Glok qui s\'approche de vous enfonce sa lance dans votre poitrine et vous transperce le cœur. Vous mourez sur le coup. Votre mission s\'achève ici, en même temps que votre vie.', 1),
(329, '328', 'Tandis que la créature meurt, son corps se dissout lentement en un liquide verdâtre et pestilentiel. Vous remarquez alors que les herbes et les plantes parmi lesquelles se répand cette substance se fanent et meurent aussitôt. Quelques instants plus tard, une grosse Pierre Précieuse apparaît sur le sol, près du cadavre décomposé : apparemment sa valeur doit être considérable. Si vous souhaitez prendre cette Pierre, rendez-vous au 76. Si vous préférez quitter les lieux aussi vite que possible, rendez-vous au 118.', 1),
(330, '329', 'En descendant vers le Cimetière des Anciens, vous remarquez une étrange brume qui baigne les lieux. Des nuages tourbillonnent sur cette étendue grise, empêchant le soleil de passer et maintenant la nécropole dans une obscurité permanente. Vous sentez un frisson vous parcourir le corps tandis que la température fraîchit peu à peu. Votre cheval se met à regimber et vous avez beau l\'éperonner, il refuse de s\'approcher de cet endroit sinistre. Il ne vous reste donc plus qu\'à abandonner votre monture pour continuer à pied. Rendez-vous au 284.', 1),
(331, '330', 'Vaincu par la fatigue, vous vous arrêtez bientôt devant un arbre mort sur lequel vous vous asseyez pour prendre quelque repos. Vous remarquez alors, coincé sous le tronc, un gros paquet ficelé comme un baluchon. Si vous souhaitez examiner le contenu de ce paquet, rendez-vous au 315. Si vous préférez le laisser où il est et poursuivre votre chemin dès que vous vous sentirez un peu reposé, rendez-vous au 213.', 1),
(332, '331', 'Vous venez d\'apercevoir l\'entrée d\'un tunnel qui disparaît dans les profondeurs de la colline. L\'ouverture du boyau est entourée de ronces et de racines. Elle fait environ deux mètres de haut et trois de large. En vous approchant, vous sentez une légère brise souffler de ce vide d\'un noir d\'encre. Si l\'autre extrémité du tunnel aboutit au flanc opposé de la colline, vous pourriez vous épargner de longues heures d\'escalade en l\'empruntant. Mais vous prendriez alors le risque de vous exposer à quelque danger inconnu. Si vous souhaitez entrer dans ce tunnel, rendez-vous au 170. Si vous préférez continuer à grimper vers le sommet de la colline, rendez-vous au 280.', 1),
(333, '332', 'Vous marchez pendant presque dix minutes le long d\'un couloir sombre et sinueux puis vous grimpez les marches d\'un escalier raide qui mène à une petite porte de bois. L\'homme actionne alors un loquet dissimulé aux regards et la porte s\'ouvre. Vous entrez peu après dans une grande pièce richement décorée : c\'est   une chambre à coucher dont l\'un des coins est occupé par une immense baignoire de marbre. L\'homme vous suggère de vous rafraîchir pendant qu\'il demande audience au Roi. Vous prenez un bain rapide et vous revêtez une toge blanche laissée là à votre intention sur une table de marbre. Quelques minutes plus tard, l\'homme revient et vous conduit le long d\'un couloir aux murs recouverts de luxueuses tapisseries. Vous arrivez enfin devant une haute porte gardée par deux soldats vêtus d\'armures en argent. Dans quelques instants, vous serez devant le Roi. Rendez-vous au 350.', 1),
(334, '333', 'Il y a presque une demi-heure que vous vous frayez un chemin parmi les épaisses broussailles lorsque vous entendez un battement d\'ailes au-dessus des arbres. Vous levez les yeux et vous distinguez la silhouette d\'un Kraan qui vole dans le ciel en provenance du nord. C\'est l\'un des monstres qui ont attaqué le monastère ; sur son dos sont assises deux créatures à la peau grise, armées de lances. Ce sont des Gloks, les cruels serviteurs des maîtres des Ténèbres, animés de haine et dévoués à la cause du mal. Il y a de cela plusieurs siècles, les ancêtres de ces monstres servaient d\'esclaves aux Maîtres des Ténèbres qui leur firent bâtir la cité infernale d\'Helgedad, située dans les déserts volcaniques qui s\'étendent au-delà des monts Durncrag. La construction de cette ville représenta une longue et douloureuse épreuve pour ces créatures, dont seules les plus fortes survécurent aux vapeurs empoisonnées qui baignent l\'atmosphère surchauffée d\'Helgedad. Caché par les arbres, vous vous figez sur place en restant parfaitement immobile tandis que le Kraan passe au-dessus de votre tête, puis disparaît en direction du sud. Lorsque vous êtes certain qu\'il s\'est suffisamment éloigné, vous reprenez votre chemin parmi les arbres de la forêt. Rendez-vous au 131.', 1),
(335, '334', 'Le cours d\'eau prend sa source dans le flanc rocheux d\'une colline et, en levant les yeux, vous apercevez sur un chemin qui longe la pente escarpée quatre soldats et leur officier. Ils portent des uniformes de l\'Armée Royale. Si vous souhaitez vous approcher d\'eux, rendez-vous au 162. Si vous maîtrisez la Discipline Kaï du Camouflage, vous pouvez la mettre en pratique et vous cacher en attendant que les soldats soient passés. Rendez-vous pour cela au 73. Si, enfin, vous maîtrisez la Discipline Kaï du Sixième Sens et que vous souhaitez en faire usage, rendez-vous au 48.', 1),
(336, '335', 'Lorsque vous vous approchez, l\'oiseau noir s\'envole au-dessus des arbres et disparaît bientôt. Vous examinez l\'arbre sur lequel il était perché, mais vous ne remarquez rien d\'anormal. Vous poursuivez donc votre chemin sans perdre davantage de temps. Rendez-vous au 121.', 1),
(337, '336', 'Vous vous ruez dans la clairière en prenant les Gloks au dépourvu. Sans la moindre seconde d\'hésitation, vous frappez celui qui se trouve le plus proche de vous et vous le tuez avant même que son corps se soit écroulé sur le sol. Les autres Gloks dégainent leurs épées à la lame recourbée et vous attaquent, il vous faut les combattre un par un. HABILETÉ ENDURANCE Premier GLOK    14   11 Deuxième GLOK   13   11 Si vous êtes vainqueur, vous libérez le soldat et vous vous rendez au 117.', 1);
INSERT INTO `chapitre` (`id`, `no_chapitre`, `texte`, `livre_id`) VALUES
(338, '337', 'Au moment où vous ôtez la broche, un craquement assourdissant retentit. Utilisez la Table de Hasard pour obtenir un chiffre. Si vous tirez un chiffre entre 0 et 4, rendez-vous au 219. Entre 5 et 9, rendez-vous au 317.', 1),
(339, '338', 'Lorsque vous reprenez conscience, vous êtes étendu au pied d\'une pente escarpée, sur un tapis de hautes herbes. Vous ne voyez plus ni votre Sac à Dos ni votre Arme, et votre tête vous fait très mal. Vous ne sauriez dire combien de temps vous êtes resté sans connaissance, mais quoi qu\'il en soit, le temps presse, et il vous faut au plus vite poursuivre votre route. Vous vous relevez donc aussitôt et vous apercevez votre Sac à Dos et votre Arme un peu plus haut sur la pente. Ils ont dû se détacher au cours de votre chute. Vous vous hâtez de les récupérer et vous repartez dans la forêt. Rendez-vous au 113.', 1),
(340, '339', 'Vous faites aussitôt un pas de côté, au moment où un Poignard vient fracasser la vitre du comptoir. Un jeune homme vous attaque et il vous faut le combattre. VOLEUR HABILETÉ: 13 ENDURANCE: 20 Si vous parvenez à le tuer en quatre assauts (ou moins), rendez-vous au 94. S\'il est toujours vivant au bout de quatre assauts, rendez-vous au 203. Vous avez le droit de prendre la fuite à tout moment en quittant la boutique pour rejoindre la grand-rue. Rendez-vous pour cela au 7.', 1),
(341, '340', 'Vous galopez à la rencontre du Loup Maudit et de son cavalier, vore arme prête à frapper. Le Glok vous voit et dégaine aussitôt son cimeterre. Vous combattez le Loup Maudit et le Glok en les considérant comme un seul et même adversaire. GLOK + LOUP MAUDIT HABILETE. 14 ENDURANCE : 24  Si vous êtes vainqueur, rendez-vous au 193.', 1),
(342, '341', 'Les soldats ne croient pas votre histoire et refusent de vous laisser entrer. L\'homme qui vous escortait disparaît alors dans la foule, et vous vous retrouvez seul dans la ville. Démoralisé par cet échec, vous vous laissez emporter par la foule qui envahit les rues et vous arrivez bientôt devant l\'entrée du Temple de la Guilde. Le bâtiment s\'élève à l\'une des extrémités du Pont de la Guilde qui traverse le fleuve Eledil, près de son embouchure où il se jette dans le golfe de Holm. Si vous souhaitez entrer dans le Temple de la Guilde, rendez-vous au 210. Si vous préférez chercher un autre moyen d\'atteindre la citadelle, rendez-vous au 37. Enfin, si vous maîtrisez la Discipline Kaï de l\'Orientation, rendez-vous au 310.', 1),
(343, '342', 'Tandis que votre voix se répercute en écho parmi les arbres, l\'étranger se tourne lentement vers vous. Votre cœur se met alors à battre à tout rompre et votre sang se glace, car l\'être qui vous fait face n\'est pas un homme : il s\'agit d\'un Vordak, l\'un des plus redoutables lieutenants des Maîtres des Ténèbres. C\'est une créature de l\'Au-Delà, un mort vivant. Le monstre pousse un cri perçant puis brandit une énorme Masse d\'Armes et se rue sur vous. Paralysé par la terreur, vous sentez également que le Vordak vous attaque avec toute la force de sa Puissance Psychique. Si vous ne maîtrisez pas la Discipline Kaï du Bouclier Psychique, vous devrez réduire de 2 points votre total d\'HABILETÉ au cours de ce combat. Il vous faut affronter cette créature qui est elle-même invulnérable à votre propre Puissance Psychique. VORDAK HABILETÉ: 18 ENDURANCE: 26 Si vous êtes vainqueur, rendez-vous au 123.', 1),
(344, '343', 'Vous êtes prisonnier des branches et des racines, mais vous parvenez finalement à dégager votre main droite, à empoigner votre Hache et à vous tailler un chemin à travers l\'épaisse végétation. Un peu plus loin, la forêt s\'éclaircit et vous avancez dans cette direction. Votre cape est déchirée en plusieurs endroits et votre bras gauche écorché au-dessus du coude. Vous perdez 2 points d\'ENDURANCE avant de vous rendre au 213.', 1),
(345, '344', 'Vous vous sentez faible et vous avez le tournis. Vos jambes deviennent insensibles et se refusent à porter votre poids. Vous essayez d\'atteindre la porte, mais le voleur se rue sur vous et vous plaque au sol. Rendez-vous au60', 1),
(346, '345', 'Vous rabattez sur votre tête le capuchon de votre cape de Seigneur Kaï et vous retenez votre souffle tandis que le Kraan tournoie au-dessus de vous. Quelques minutes plus tard, vous entendez les Gloks pousser des jurons furieux et les battements d\'ailes des Kraans s\'évanouissent bientôt: ils sont partis vers l\'ouest. La promptitude de vos réflexes vous a sauvé d\'une capture certaine et d\'une mort probable. Vous pouvez à présent revenir sur le sentier en vous rendant au 272. Mais vous pouvez également choisir de poursuivre votre chemin parmi les arbres de la forêt. Rendez-vous pour cela au 19.', 1),
(347, '346', 'Une lance est profondément enfoncée dans la cage thoracique du squelette. L\'Arme est en parfait état et vous pouvez la prendre si vous le désirez. Faites, dans ce cas, les modifications nécessaires sur votre Feuille d\'Aventure. Pour quitter ensuite la clairière, rendez-vous au 14.', 1),
(348, '347', 'La forêt s\'éclaircit bientôt et vous apercevez un peu plus loin une vieille cabane en rondins, construite sous un chêne. La cabane semble avoir été abandonnée et il n\'y reste apparemment rien de très intéressant. En ouvrant un petit coffre posé près de la porte, vous découvrez des fagots de branches liées ensemble avec de la ficelle. Les fagots ont été enduits de poix à l\'une de leurs extrémités : ils peuvent ainsi faire office de Torches. Près du coffre, vous trouvez également un Sabre et un Briquet à Amadou. Vous pouvez les prendre ainsi qu\'une des Torches, à condition, bien entendu, de modifier en conséquence votre Feuille d\'Aventure. Vous refermez ensuite la porte de la cabane et vous poursuivez votre chemin le long d\'un sentier recouvert de broussailles et orienté au nord-est. Rendez-vous au 103.', 1),
(349, '348', 'D\'un coup de pied, vous jetez au loin le corps du serpent et vous êtes alors saisi d\'une terreur rétrospective, car cette Vipère des Marais était une vipère rouge et aucun remède n\'existe contre la puissance de son venin ! Vous estimez qu\'il serait suicidaire de continuer plus avant dans cette direction et vous revenez donc sur vos pas jusqu\'à ce que vous retrouviez un terrain plus ferme. Vous poursuivez ensuite votre chemin en vous rendant au 95.', 1),
(350, '349', 'C\'est un jeune homme aux cheveux blonds et au regard pénétrant. Son visage est marqué par la fatigue et souillé par la poussière des combats. Ses amples vêtements bleu ciel, déchirés par endroits, montrent à l\'évidence que le magicien a passé de longs jours dans la forêt. Il vous serre la main et s\'incline. « Soyez assuré de mon éternelle gratitude, Seigneur Kaï, dit-il, mes pouvoirs magiques étaient presque épuisés et, si vous n\'étiez pas venu à mon secours, je crois bien que j\'aurais fini mes jours au bout de la lance d\'un Glok. » Il semble affaibli et ses jambes ont du mal à le porter. Vous le prenez alors par le bras et vous le faites asseoir sur une des colonnes renversées du Temple, puis vous écoutez ce qu\'il a à vous dire. «Je m\'appelle Banedon, poursuit-il, je suis compagnon de la Confrérie de l\'Étoile de Cristal, c\'est-à-dire la Guilde des Magiciens de Toran. Mon maître m\'a envoyé à votre monastère pour porter ce message urgent. » En prononçant ces mots, il sort d\'une poche de ses vêtements une enveloppe de vélin qu\'il vous tend. « Comme vous pouvez le voir, reprend-il, j\'ai ouvert la lettre et j\'en ai lu le contenu. Lorsque la guerre a commencé, je me trouvais sur la grand-route, cheminant avec deux compagnons de voyage. Des Kraans nous ont attaqués et nous nous sommes enfuis dans la forêt, mais nous n\'avons pas pu nous retrouver par la suite. » La lettre avertit les Seigneurs Kaï que les Maîtres des Ténèbres ont rassemblé une immense armée au-delà des monts Durncrag. Les Maîtres de la Guilde conjurent les Seigneurs Kaï d\'annuler les cérémonies organisées pour la fête de Fehmarn et de se préparer   à la guerre. « Hélas ! je crois bien que nous avons été trahis, dit Banedon en penchant la tête d\'un air consterné. L\'un des compagnons de mon ordre, en effet, un frère du nom de Vonotar, s\'est initié aux mystères interdits de la Magie Noire. Il y a dix jours, il a renié la Confrérie et tué l\'un de nos Anciens. Depuis, il a disparu et il semble bien qu\'il se soit mis au service des Maîtres des Ténèbres. » Vous révélez alors à Banedon ce qu\'il est advenu du monastère et vous l\'informez de la mission que vous vous êtes fixée auprès du Roi. Lorsque vous avez terminé votre récit, il ôte de son cou une Chaîne d\'Or et vous la donne. Une petite Étoile de Cristal est attachée à la chaîne. « C\'est le symbole de ma Confrérie, explique le magicien, et, en ces heures sombres, nous sommes frères tous deux. Aussi, prenez ce talisman qui vous portera bonheur. Puisse-t-il vous protéger au long de votre route ! » Vous le remerciez, vous passez la Chaîne autour de votre cou et vous glissez l\'Étoile de Cristal dans votre chemise, tout contre votre poitrine (n\'oubliez pas d\'inscrire ce pendentif à l\'Etoile de Cristal dans la case Objets Spéciaux de votre Feuille d\'Aventure). Banedon ensuite vous dit adieu. « Il nous faut quitter ces lieux, assure-t-il, de peur que les Gloks ne reviennent accompagnés de renforts. Ces répugnantes créatures auraient alors raison de nous. Je dois à présent retourner à la Guilde. Au revoir, mon frère, que la chance des Dieux vous accompagne. » Rendez-vous au 293.', 1),
(351, '350', 'Vous entrez dans la grande Salle du Conseil, une pièce immense magnifiquement décorée de tentures blanc et or. Le Roi et ses plus proches conseillers sont en train d\'examiner une grande carte étalée sur une table de marbre, au centre de la salle. Leurs visages expriment l\'inquiétude et la concentration. Lorsque vous faites le récit de la mort de vos compagnons et des périls que vous avez dû affronter pour atteindre la citadelle, tout le monde vous écoute en silence sans jamais vous interrompre. Enfin, quand vous en avez terminé, le Roi s\'approche de vous et prend votre main droite dans la sienne. « Loup Solitaire, tu as fait       preuve de courage et d\'abnégation : ce sont là les qualités d\'un véritable Seigneur Kaï. Ton voyage a été semé de dangers et bien que tu nous apportes des nouvelles qui nous plongent dans le chagrin, ta détermination illumine ces heures sombres d\'un rayon d\'espoir. Tu as grandement honoré la mémoire de tes Maîtres et nous t\'en portons louange. » Toutes les personnes rassemblées dans la salle se joignent à cet hommage et vous expriment leur profonde gratitude. Devant tant d\'honneur, vous ne pouvez vous empêcher de rougir. Le Roi alors lève la main et tout le monde fait silence. « Tu as fait tout ce que le Royaume du Sommerlund pouvait attendre d\'un de ses fidèles sujets, reprend le monarque, mais notre patrie a encore grand besoin de toi. Les Maîtres des Ténèbres ont, en effet, retrouvé leur puissance, et leur ambition ne connaît plus de bornes. Notre seul espoir de les repousser se trouve désormais au royaume de Durenor. C\'est là que repose l\'instrument de la puissance qui les a vaincus autrefois. Loup Solitaire, tu es le dernier des Seigneurs Kaï et tu possèdes la science que t\'ont enseignée tes maîtres. Iras-tu à Durenor pour y chercher le Glaive de Sommer, l\'Épée du Soleil ? Seul ce don des Dieux nous permettra d\'écraser l\'ennemi et de sauver le royaume. » Si vous acceptez de partir en quête du Glaive de Sommer, vous pourrez le faire en vivant l\'aventure que vous propose le deuxième volume de la série du Loup Solitaire : La Traversée Infernale', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discipline_kai`
--

CREATE TABLE `discipline_kai` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discipline_kai`
--

INSERT INTO `discipline_kai` (`id`, `nom`, `description`) VALUES
(1, 'Le Camouflage', 'Cette technique permet au Seigneur Kaï de se fondre dans le paysage. A la campagne, il peut se cacher parmi les arbres et les rochers et se rendre de cette façon invisible à l\'ennemi même s\'il passe tout près de lui. Dans une ville, cette discipline donnera à celui qui l\'utilise la faculté d\'avoir l\'air d\'un habitant du cru, tant par l\'apparence que par l\'accent ou la langue employée. On peut ainsi trouver un abri où se cacher en toute sécurité.'),
(7, 'La Chasse', 'Cette discipline donne au Seigneur Kaï l\'assurance qu\'il ne mourra jamais de faim même s\'il se trouve dans un environnement hostile. Il aura toujours la possibilité de chasser pour se procurer de la nourriture, sauf dans les déserts et les autres régions arides. Cette technique permet également de se déplacer sans bruit en pistant une proie. Avec cette discipline, vous êtes dispensé de Repas chaque fois qu\'il est obligatoire de manger'),
(8, 'Le Sixième Sens', 'Grâce à cette technique, le Seigneur Kaï devine les dangers imminents qui le menacent. Ce Sixième Sens peut également lui révéler les intentions véritables d\'un inconnu ou la nature d\'un objet étrange rencontré au cours d\'une aventure.'),
(9, 'L\'Orientation', 'Chaque fois qu\'il se trouvera dans l\'obligation de décider quelle direction il doit prendre, le Seigneur Kaï fera toujours le bon choix grâce à cette technique. Il saura ainsi quel chemin il convient d\'emprunter dans une forêt et il pourra également, dans une ville, découvrir l\'endroit où sont cachés une personne ou un objet. Par ailleurs, il saura interpréter chaque trace de pas, chaque empreinte qui pourrait lui permettre de remonter une piste.'),
(10, 'La Guérison', 'Cette discipline donne la faculté de récupérer des points d\'ENDURANCE perdus lors d\'un combat. Si vous maîtrisez cette technique, vous pourrez ajouter 1 point d\'ENDURANCE à votre total à chaque fois qu\'il vous sera possible d\'aller d\'un bout à l\'autre d\'un paragraphe sans avoir à combattre un ennemi. (Vous n\'aurez droit d\'utiliser cette technique de la Guérison que lorsque vos points d\'ENDURANCE seront tombés au-dessous de votre total initial. Rappelez-vous que vos points d\'ENDURANCE ne peuvent en aucun cas excéder votre total de départ).'),
(11, 'La Maîtrise des armes', 'En entrant au Monastère Kaï, chaque élève a la possibilité d\'être initié au maniement d\'une arme. Si vous choisissez d\'avoir la Maîtrise d\'une arme, utilisez la Table de Hasard à la manière indiquée plus haut pour obtenir un chiffre qui correspondra, dans la liste ci-dessous, à l\'arme dont on vous aura enseigné le maniement. Vous aurez dès lors la parfaite Maîtrise de cette arme et chaque fois que vous combattrez avec elle, vous aurez droit à 2 points d\'HABILETÉ supplémentaires. Le fait que vous possédiez la maîtrise d\'une arme ne signifie nullement que vous disposerez de cette arme dès le départ de votre aventure. Sauf exception, c\'est au cours de celle-ci que les occasions vous seront données de vous procurer les armes qui vous conviennent. Si toutefois la Table de Hasard vous donne la maîtrise de la Hache, vous êtes particulièrement chanceux, car c\'est la seule arme que le Loup Solitaire est sûr de pouvoir emporter dès le début de sa mission'),
(12, 'Bouclier psychique', 'Les Maîtres des Ténèbres et les nombreuses créatures malfaisantes qui leur obéissent ont la faculté de vous porter atteinte en faisant usage de leur force psychique. La technique du Bouclier psychique vous permet cependant de ne pas perdre de points d\'ENDURANCE lorsque vous vous trouvez soumis à une telle agression. Avec cette discipline vous n\'avez pas de perte d\'ENDURANCE en cas d\'agression mentale.'),
(13, 'Puissance psychique', 'Cette technique permet au Seigneur Kaï d\'attaquer un ennemi en se servant de la force de son esprit : on peut l\'utiliser en même temps qu\'une arme de combat habituelle et l\'on dispose alors de 2 points supplémentaires d\'HABILETÉ. Cette puissance psychique, cependant, n\'est pas forcément efficace avec toutes les créatures: il se peut que certaines d\'entre elles y soient insensibles. Si le cas se présente, vous en serez averti au cours de votre mission. Si vous choisissez cette discipline, vous possedez 2 points d\'HABILETÉ supplémentaires.'),
(14, 'Communication Animale', 'Grâce à cette technique, un Seigneur Kaï peut communiquer avec certains animaux et deviner les intentions de certains autres.'),
(15, 'Maîtrise Psychique de la Matière', 'C\'est une technique qui donne à un Seigneur Kaï la faculté de déplacer de petits objets par le simple pouvoir de sa concentration mentale. Si vous remplissez avec succès la mission qui vous est assignée dans ce premier livre de la série du Loup Solitaire, vous aurez le droit d\'ajouter une Discipline Kaï supplémentaire à celles que vous possédez déjà. Lorsque vous vous lancerez dans la nouvelle aventure que vous propose le prochain volume de la série (intitulé La Traversée Infernale), vous pourrez ainsi faire usage de six disciplines Kaï (les cinq premières étant acquises une bonne fois pour toutes), de même que des Objets Spéciaux que vous aurez décidé de conserver au cours de votre première mission. Sachez en effet que, de livre en livre, votre expérience grandira chaque fois que vous aurez accompli une mission : vous pourrez, de cette façon, espérer atteindre un jour la complète maîtrise de l\'art et de la science des Moines Kaï.');

-- --------------------------------------------------------

--
-- Table structure for table `feuille_aventure`
--

CREATE TABLE `feuille_aventure` (
  `id` int(11) NOT NULL,
  `habilete` int(11) DEFAULT NULL,
  `endurance` int(11) DEFAULT NULL,
  `or_bourse` int(11) DEFAULT NULL,
  `objets_speciaux` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feuille_aventure`
--

INSERT INTO `feuille_aventure` (`id`, `habilete`, `endurance`, `or_bourse`, `objets_speciaux`) VALUES
(4, 3, 3, 3, NULL),
(6, 4, 4, 4, NULL),
(7, 4, 4, 4, NULL),
(9, 4, 4, 4, NULL),
(11, 14, 22, 0, NULL),
(12, 15, 29, 7, NULL),
(13, 15, 25, 15, NULL),
(14, 16, 27, 2, NULL),
(15, 15, 22, 5, NULL),
(16, 15, 20, 4, NULL),
(17, 18, 21, 8, NULL),
(18, 18, 28, 4, NULL),
(19, 19, 20, 1, NULL),
(20, 14, 23, 54, ''),
(21, 19, 21, 3, NULL),
(22, 16, 23, 4, NULL),
(23, 15, 26, 6, ''),
(24, 17, 20, 2, NULL),
(25, 56, 345, 43, 'super'),
(26, 15, 27, 7, NULL),
(27, 14, 23, 7, NULL),
(28, 11, 28, 5, NULL),
(29, 11, 23, 15, 'Carte Géographique: Vous permet de vous orienter\n'),
(30, 18, 23, 3, 'Carte Géographique: Vous permet de vous orienter\n'),
(31, 10, 29, 8, 'Carte Géographique: Vous permet de vous orienter\n'),
(32, 16, 21, 12, 'Carte Géographique: Vous permet de vous orienter\n'),
(33, 17, 24, 5, 'Carte Géographique: Vous permet de vous orienter\n'),
(34, 12, 21, 3, 'Carte Géographique: Vous permet de vous orienter\n'),
(35, 50, 50, 50, 'Carte Géographique: Vous permet de vous orienter\n'),
(36, 11, 11, 211, 'Carte Géographique: Vous permet de vous orienter\n'),
(37, 17, 20, 9, 'Carte Géographique: Vous permet de vous orienter\n'),
(38, 5, 4, 0, 'Carte Géographique: Vous permet de vous orienter\nsdbyfblaks'),
(39, 11, 21, 2, 'Carte Géographique: Vous permet de vous orienter\n'),
(40, 11, 24, 6, 'Carte Géographique: Vous permet de vous orienter\nUne Cotte de Maille: elle ajoute 4 points d\'ENDURANCE à votre total.\n'),
(41, 15, 26, 7, 'Carte Géographique: Vous permet de vous orienter\nUne Cotte de Maille: elle ajoute 4 points d\'ENDURANCE à votre total.\n'),
(42, 35, 36, 34, '50test'),
(43, 18, 28, 0, 'Carte Géographique: Vous permet de vous orienter\nallo\n'),
(44, 17, 23, 9, 'Carte Géographique: Vous permet de vous orienter\n'),
(45, 11, 26, 9, 'Carte Géographique: Vous permet de vous orienter\n'),
(46, 10, 27, 8, 'Carte Géographique: Vous permet de vous orienter\n'),
(47, 10, 20, 8, 'Carte Géographique: Vous permet de vous orienter\n'),
(48, 15, 23, 15, 'Carte Géographique: Vous permet de vous orienter\ntest\n'),
(49, 10, 10, 10, 'Carte Géographique: Vous permet de vous orienter\nUne Cotte de Maille: elle ajoute 4 points d\'ENDURANCE à votre total.\npotion\n'),
(50, 10, 10, 10, 'Carte Géographique: Vous permet de vous orienter\ncool\n');

--
-- Triggers `feuille_aventure`
--
DELIMITER $$
CREATE TRIGGER `maximum_or` BEFORE UPDATE ON `feuille_aventure` FOR EACH ROW BEGIN 
	declare _nb_or integer;
	set _nb_or = (
		select or_bourse from feuille_aventure where id = old.id
	);
	if _nb_or > 50 then
		SIGNAL SQLSTATE '03002' SET MESSAGE_TEXT = 'Vous ne pouvez pas avoir plus de 50 pieces d''or dans votre bourse';
		set new.or_bourse = 50;
	end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feuille_aventure_arme`
--

CREATE TABLE `feuille_aventure_arme` (
  `id` int(11) NOT NULL,
  `arme_id` int(11) DEFAULT NULL,
  `feuille_aventure_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feuille_aventure_arme`
--

INSERT INTO `feuille_aventure_arme` (`id`, `arme_id`, `feuille_aventure_id`) VALUES
(1, 10, 14),
(2, 7, 14),
(3, 7, 15),
(4, 7, 16),
(5, 7, 17),
(6, 9, 18),
(7, 7, 18),
(8, 7, 19),
(11, 7, 21),
(12, 7, 22),
(13, 7, 23),
(14, 7, 24),
(15, 10, 25),
(16, 7, 25),
(17, 7, 26),
(18, 6, 27),
(19, 7, 27),
(20, 2, 28),
(21, 7, 28),
(22, 7, 29),
(23, 10, 30),
(24, 7, 30),
(25, 7, 31),
(32, 1, 32),
(33, 5, 32),
(37, 7, 33),
(45, 1, 34),
(46, 7, 35),
(47, 7, 36),
(48, 7, 37),
(49, 10, 38),
(50, 7, 38),
(51, 7, 39),
(53, 1, 40),
(54, 7, 41),
(56, 7, 43),
(57, 7, 42),
(58, 3, 42),
(59, 7, 44),
(60, 7, 45),
(61, 10, 46),
(62, 7, 46),
(63, 7, 47),
(65, 7, 48),
(66, 2, 48),
(68, 7, 49),
(69, 9, 49);

-- --------------------------------------------------------

--
-- Table structure for table `feuille_aventure_discipline_kai`
--

CREATE TABLE `feuille_aventure_discipline_kai` (
  `id` int(11) NOT NULL,
  `discipline_kai_id` int(11) DEFAULT NULL,
  `feuille_aventure_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feuille_aventure_discipline_kai`
--

INSERT INTO `feuille_aventure_discipline_kai` (`id`, `discipline_kai_id`, `feuille_aventure_id`) VALUES
(1, 1, 12),
(2, 7, 12),
(3, 8, 12),
(4, 9, 12),
(5, 10, 12),
(8, 1, 14),
(12, 1, 15),
(13, 7, 15),
(14, 8, 15),
(15, 9, 15),
(16, 10, 15),
(17, 1, 16),
(18, 7, 16),
(19, 8, 16),
(20, 9, 16),
(21, 10, 16),
(22, 1, 17),
(23, 7, 17),
(24, 8, 17),
(25, 9, 17),
(26, 10, 17),
(27, 1, 18),
(28, 7, 18),
(29, 8, 18),
(30, 9, 18),
(31, 14, 18),
(32, 1, 19),
(33, 7, 19),
(34, 8, 19),
(35, 9, 19),
(36, 14, 19),
(37, 1, 20),
(38, 7, 20),
(39, 9, 20),
(40, 8, 20),
(41, 13, 20),
(42, 1, 21),
(43, 7, 21),
(44, 10, 21),
(45, 13, 21),
(46, 14, 21),
(47, 8, 22),
(48, 9, 22),
(49, 1, 22),
(50, 12, 22),
(51, 13, 22),
(52, 7, 23),
(53, 10, 23),
(54, 1, 23),
(55, 11, 23),
(56, 14, 23),
(57, 1, 24),
(58, 11, 24),
(59, 8, 24),
(60, 10, 24),
(61, 14, 24),
(62, 14, 25),
(63, 13, 25),
(64, 12, 25),
(65, 11, 25),
(66, 10, 25),
(67, 1, 26),
(68, 8, 26),
(69, 9, 26),
(70, 11, 26),
(71, 13, 26),
(72, 1, 27),
(73, 8, 27),
(74, 10, 27),
(75, 12, 27),
(76, 14, 27),
(77, 1, 28),
(78, 7, 28),
(79, 8, 28),
(80, 9, 28),
(81, 13, 28),
(82, 1, 29),
(83, 7, 29),
(84, 8, 29),
(85, 9, 29),
(86, 13, 29),
(87, 1, 30),
(88, 8, 30),
(89, 9, 30),
(90, 10, 30),
(91, 14, 30),
(92, 10, 31),
(93, 12, 31),
(94, 1, 31),
(95, 8, 31),
(96, 13, 31),
(97, 1, 32),
(98, 7, 32),
(99, 8, 32),
(100, 11, 32),
(101, 13, 32),
(102, 1, 33),
(103, 7, 33),
(104, 8, 33),
(105, 9, 33),
(106, 13, 33),
(107, 1, 34),
(108, 7, 34),
(109, 9, 34),
(110, 14, 34),
(111, 13, 34),
(112, 1, 35),
(113, 7, 35),
(114, 9, 35),
(115, 10, 35),
(116, 13, 35),
(117, 1, 36),
(118, 8, 36),
(119, 9, 36),
(120, 10, 36),
(121, 14, 36),
(122, 1, 37),
(123, 7, 37),
(124, 8, 37),
(125, 9, 37),
(126, 14, 37),
(127, 1, 38),
(128, 7, 38),
(129, 8, 38),
(130, 9, 38),
(131, 14, 38),
(132, 1, 39),
(133, 7, 39),
(134, 8, 39),
(135, 9, 39),
(136, 14, 39),
(137, 1, 40),
(138, 7, 40),
(139, 8, 40),
(140, 9, 40),
(141, 12, 40),
(142, 1, 41),
(143, 7, 41),
(144, 8, 41),
(145, 9, 41),
(146, 14, 41),
(147, 1, 42),
(148, 7, 42),
(149, 8, 42),
(150, 10, 42),
(151, 14, 42),
(152, 1, 43),
(153, 7, 43),
(154, 8, 43),
(155, 9, 43),
(156, 14, 43),
(157, 1, 44),
(158, 8, 44),
(159, 9, 44),
(160, 10, 44),
(161, 13, 44),
(162, 7, 45),
(163, 9, 45),
(164, 8, 45),
(165, 10, 45),
(166, 14, 45),
(167, 7, 46),
(168, 8, 46),
(169, 1, 46),
(170, 12, 46),
(171, 14, 46),
(172, 1, 47),
(173, 7, 47),
(174, 8, 47),
(175, 9, 47),
(176, 14, 47),
(177, 1, 48),
(178, 7, 48),
(179, 8, 48),
(180, 9, 48),
(181, 10, 48),
(182, 1, 49),
(183, 7, 49),
(184, 9, 49),
(185, 10, 49),
(186, 14, 49),
(187, 1, 50),
(188, 7, 50),
(189, 9, 50),
(190, 11, 50),
(191, 13, 50);

-- --------------------------------------------------------

--
-- Table structure for table `feuille_aventure_objet`
--

CREATE TABLE `feuille_aventure_objet` (
  `id` int(11) NOT NULL,
  `objet_id` int(11) DEFAULT NULL,
  `feuille_aventure_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feuille_aventure_objet`
--

INSERT INTO `feuille_aventure_objet` (`id`, `objet_id`, `feuille_aventure_id`) VALUES
(1, 1, 16),
(2, 1, 17),
(3, 1, 18),
(4, 1, 19),
(5, 2, 19),
(7, 1, 21),
(8, 1, 22),
(9, 1, 23),
(10, 1, 24),
(12, 1, 18),
(13, 2, 18),
(14, 1, 18),
(19, 2, 20),
(25, 4, 20),
(28, 7, 25),
(30, 9, 25),
(31, 10, 25),
(32, 11, 25),
(33, 12, 25),
(35, 14, 25),
(37, 16, 25),
(38, 1, 26),
(39, 1, 27),
(40, 1, 28),
(41, 1, 29),
(42, 1, 30),
(43, 1, 31),
(44, 2, 31),
(45, 17, 25),
(46, 1, 32),
(47, 1, 33),
(49, 1, 34),
(50, 19, 34),
(51, 1, 35),
(52, 20, 35),
(53, 1, 36),
(54, 1, 37),
(55, 1, 38),
(56, 1, 39),
(57, 1, 40),
(58, 1, 41),
(59, 1, 42),
(60, 1, 43),
(61, 21, 38),
(62, 22, 38),
(63, 23, 42),
(64, 1, 44),
(65, 1, 45),
(66, 2, 45),
(67, 1, 46),
(68, 1, 47),
(69, 1, 47),
(70, 1, 47),
(71, 1, 48),
(73, 1, 48),
(74, 24, 48),
(76, 25, 49),
(78, 26, 50);

--
-- Triggers `feuille_aventure_objet`
--
DELIMITER $$
CREATE TRIGGER `maximum_objets` BEFORE INSERT ON `feuille_aventure_objet` FOR EACH ROW BEGIN 
	declare _nb_objets integer;
	set _nb_objets = (
		select count(id) from feuille_aventure_objet where feuille_aventure_id = new.feuille_aventure_id
	);
	if _nb_objets > 8 then
		SIGNAL SQLSTATE '03001' SET MESSAGE_TEXT = 'Il ne peut pas y avoir plus de 8 objets dans le sac a dos';
	end if;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `lien_chapitre`
--

CREATE TABLE `lien_chapitre` (
  `id` int(11) NOT NULL,
  `no_chapitre_origine` int(11) DEFAULT NULL,
  `no_chapitre_destination` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lien_chapitre`
--

INSERT INTO `lien_chapitre` (`id`, `no_chapitre_origine`, `no_chapitre_destination`) VALUES
(1, 1, 85),
(2, 1, 275),
(3, 1, 141),
(4, 2, 343),
(5, 2, 276),
(6, 3, 196),
(7, 3, 144),
(8, 4, 75),
(9, 4, 175),
(10, 4, 218),
(11, 5, 111),
(12, 6, 183),
(13, 6, 200),
(14, 7, 108),
(15, 7, 25),
(16, 8, 70),
(17, 9, 236),
(18, 9, 292),
(19, 10, 115),
(20, 10, 83),
(21, 11, 139),
(22, 12, 262),
(23, 12, 247),
(24, 13, 307),
(25, 13, 213),
(26, 14, 43),
(27, 14, 106),
(28, 15, 207),
(29, 15, 201),
(30, 15, 35),
(31, 16, 192),
(32, 17, 53),
(33, 17, 274),
(34, 17, 331),
(35, 18, 239),
(36, 18, 114),
(37, 18, 29),
(38, 19, 272),
(39, 19, 69),
(40, 20, 272),
(41, 21, 312),
(42, 22, 181),
(43, 22, 145),
(44, 23, 337),
(45, 23, 151),
(46, 23, 326),
(47, 24, 234),
(48, 24, 184),
(49, 25, 139),
(50, 26, 249),
(51, 26, 100),
(52, 27, 250),
(53, 27, 52),
(54, 28, 130),
(55, 28, 147),
(56, 29, 270),
(57, 30, 194),
(58, 30, 261),
(59, 31, 264),
(60, 32, 176),
(61, 32, 340),
(62, 33, 248),
(63, 34, 328),
(64, 35, 207),
(65, 37, 289),
(66, 37, 282),
(67, 38, 128),
(68, 38, 347),
(69, 39, 228),
(70, 40, 105),
(71, 41, 174),
(72, 41, 116),
(73, 42, 86),
(74, 42, 238),
(75, 42, 157),
(76, 42, 147),
(77, 43, 195),
(78, 43, 106),
(79, 44, 277),
(80, 44, 338),
(81, 45, 180),
(82, 46, 246),
(83, 46, 90),
(84, 46, 296),
(85, 48, 243),
(86, 49, 339),
(87, 49, 60),
(88, 50, 97),
(89, 51, 288),
(90, 51, 221),
(91, 52, 225),
(92, 55, 325),
(93, 57, 164),
(94, 57, 109),
(95, 57, 308),
(96, 58, 286),
(97, 58, 160),
(98, 59, 124),
(99, 59, 106),
(100, 59, 211),
(101, 61, 268),
(102, 62, 288),
(103, 63, 269),
(104, 64, 188),
(105, 64, 16),
(106, 65, 104),
(107, 66, 350),
(108, 67, 140),
(109, 68, 130),
(110, 68, 15),
(111, 69, 272),
(112, 70, 28),
(113, 70, 157),
(114, 70, 8),
(115, 71, 242),
(116, 71, 104),
(117, 71, 65),
(118, 72, 265),
(119, 73, 243),
(120, 74, 138),
(121, 74, 281),
(122, 75, 260),
(123, 75, 163),
(124, 76, 118),
(125, 77, 19),
(126, 78, 132),
(127, 78, 12),
(128, 78, 220),
(129, 79, 204),
(130, 80, 7),
(131, 81, 183),
(132, 81, 200),
(133, 82, 235),
(134, 83, 205),
(135, 83, 180),
(136, 83, 232),
(137, 83, 45),
(138, 84, 188),
(139, 85, 229),
(140, 85, 99),
(141, 86, 6),
(142, 86, 35),
(143, 86, 167),
(144, 86, 42),
(145, 87, 61),
(146, 88, 216),
(147, 88, 31),
(148, 89, 53),
(149, 89, 274),
(150, 89, 316),
(151, 90, 18),
(152, 91, 152),
(153, 91, 7),
(154, 91, 198),
(155, 92, 13),
(156, 93, 106),
(157, 94, 7),
(158, 95, 240),
(159, 95, 5),
(160, 96, 33),
(161, 96, 248),
(162, 97, 255),
(163, 97, 306),
(164, 98, 139),
(165, 99, 222),
(166, 100, 161),
(167, 100, 133),
(168, 100, 257),
(169, 101, 281),
(170, 102, 284),
(171, 103, 13),
(172, 103, 287),
(173, 104, 26),
(174, 104, 100),
(175, 105, 335),
(176, 106, 263),
(177, 106, 334),
(178, 107, 23),
(179, 110, 55),
(180, 111, 57),
(181, 111, 308),
(182, 113, 347),
(183, 113, 295),
(184, 114, 239),
(185, 115, 150),
(186, 115, 177),
(187, 115, 83),
(188, 116, 321),
(189, 117, 330),
(190, 118, 224),
(191, 119, 226),
(192, 120, 84),
(193, 120, 171),
(194, 120, 54),
(195, 121, 342),
(196, 121, 309),
(197, 121, 283),
(198, 122, 206),
(199, 123, 304),
(200, 123, 2),
(201, 125, 27),
(202, 125, 214),
(203, 125, 301),
(204, 126, 46),
(205, 126, 143),
(206, 128, 297),
(207, 128, 336),
(208, 129, 3),
(209, 129, 144),
(210, 130, 201),
(211, 131, 241),
(212, 131, 55),
(213, 131, 302),
(214, 131, 101),
(215, 132, 64),
(216, 133, 266),
(217, 134, 305),
(218, 134, 40),
(219, 135, 223),
(220, 135, 4),
(221, 136, 313),
(222, 137, 23),
(223, 138, 291),
(224, 139, 66),
(225, 140, 14),
(226, 140, 252),
(227, 140, 215),
(228, 140, 36),
(229, 141, 56),
(230, 141, 333),
(231, 142, 58),
(232, 142, 135),
(233, 142, 102),
(234, 143, 149),
(235, 144, 63),
(236, 144, 217),
(237, 145, 165),
(238, 146, 154),
(239, 147, 42),
(240, 147, 28),
(241, 148, 81),
(242, 148, 199),
(243, 149, 256),
(244, 151, 87),
(245, 152, 49),
(246, 152, 231),
(247, 153, 202),
(248, 153, 135),
(249, 153, 329),
(250, 155, 70),
(251, 156, 294),
(252, 156, 245),
(253, 157, 30),
(254, 157, 167),
(255, 158, 106),
(256, 159, 191),
(257, 159, 234),
(258, 160, 286),
(259, 161, 209),
(260, 162, 258),
(261, 162, 127),
(262, 163, 321),
(263, 165, 212),
(264, 166, 104),
(265, 167, 88),
(266, 167, 264),
(267, 167, 178),
(268, 168, 64),
(269, 169, 137),
(270, 170, 319),
(271, 171, 303),
(272, 172, 239),
(273, 172, 114),
(274, 172, 29),
(275, 173, 259),
(276, 174, 190),
(277, 175, 41),
(278, 175, 116),
(279, 175, 182),
(280, 176, 253),
(281, 176, 126),
(282, 177, 83),
(283, 178, 88),
(284, 178, 264),
(285, 179, 318),
(286, 179, 51),
(287, 180, 62),
(288, 180, 22),
(289, 181, 288),
(290, 182, 174),
(291, 183, 97),
(292, 183, 200),
(293, 184, 64),
(294, 186, 106),
(295, 187, 186),
(296, 187, 228),
(297, 188, 303),
(298, 189, 118),
(299, 190, 20),
(300, 190, 273),
(301, 191, 24),
(302, 192, 171),
(303, 192, 120),
(304, 193, 253),
(305, 193, 126),
(306, 194, 208),
(307, 194, 148),
(308, 195, 59),
(309, 195, 106),
(310, 196, 332),
(311, 197, 172),
(312, 198, 7),
(313, 198, 152),
(314, 199, 81),
(315, 200, 78),
(316, 201, 238),
(317, 201, 215),
(318, 201, 130),
(319, 202, 58),
(320, 203, 80),
(321, 203, 344),
(322, 204, 111),
(323, 205, 181),
(324, 205, 145),
(325, 206, 224),
(326, 207, 30),
(327, 208, 320),
(328, 209, 23),
(329, 210, 332),
(330, 211, 173),
(331, 211, 244),
(332, 211, 106),
(333, 212, 350),
(334, 213, 331),
(335, 214, 125),
(336, 215, 346),
(337, 215, 14),
(338, 216, 264),
(339, 217, 91),
(340, 217, 7),
(341, 218, 75),
(342, 220, 24),
(343, 221, 318),
(344, 222, 140),
(345, 222, 252),
(346, 222, 67),
(347, 223, 75),
(348, 223, 175),
(349, 224, 153),
(350, 225, 39),
(351, 226, 277),
(352, 226, 338),
(353, 227, 271),
(354, 227, 348),
(355, 228, 140),
(356, 228, 215),
(357, 229, 267),
(358, 230, 179),
(359, 231, 94),
(360, 231, 203),
(361, 232, 180),
(362, 232, 22),
(363, 233, 206),
(364, 235, 32),
(365, 235, 146),
(366, 235, 254),
(367, 236, 104),
(368, 237, 72),
(369, 238, 42),
(370, 238, 68),
(371, 239, 34),
(372, 239, 118),
(373, 240, 79),
(374, 241, 349),
(375, 242, 166),
(376, 242, 9),
(377, 244, 93),
(378, 245, 190),
(379, 246, 197),
(380, 247, 159),
(381, 247, 220),
(382, 248, 44),
(383, 248, 300),
(384, 249, 169),
(385, 249, 107),
(386, 250, 186),
(387, 251, 10),
(388, 252, 155),
(389, 252, 70),
(390, 253, 278),
(391, 254, 32),
(392, 254, 146),
(393, 255, 82),
(394, 256, 224),
(395, 257, 133),
(396, 257, 161),
(397, 258, 50),
(398, 260, 156),
(399, 261, 208),
(400, 261, 264),
(401, 262, 191),
(402, 264, 97),
(403, 264, 6),
(404, 265, 142),
(405, 266, 209),
(406, 267, 125),
(407, 268, 288),
(408, 269, 314),
(409, 269, 7),
(410, 270, 21),
(411, 272, 134),
(412, 272, 305),
(413, 273, 179),
(414, 273, 51),
(415, 274, 331),
(416, 275, 345),
(417, 275, 74),
(418, 277, 113),
(419, 278, 149),
(420, 279, 112),
(421, 279, 96),
(422, 280, 327),
(423, 280, 170),
(424, 281, 311),
(425, 281, 77),
(426, 282, 11),
(427, 283, 123),
(428, 284, 71),
(429, 285, 325),
(430, 287, 13),
(431, 287, 330),
(432, 288, 129),
(433, 289, 139),
(434, 290, 140),
(435, 291, 272),
(436, 293, 281),
(437, 294, 230),
(438, 294, 190),
(439, 294, 321),
(440, 295, 185),
(441, 295, 92),
(442, 296, 90),
(443, 297, 117),
(444, 298, 121),
(445, 298, 38),
(446, 299, 227),
(447, 299, 95),
(448, 302, 110),
(449, 302, 285),
(450, 303, 237),
(451, 303, 72),
(452, 304, 2),
(453, 305, 105),
(454, 307, 213),
(455, 308, 122),
(456, 310, 37),
(457, 311, 279),
(458, 311, 47),
(459, 311, 324),
(460, 312, 299),
(461, 313, 248),
(462, 314, 341),
(463, 314, 98),
(464, 315, 213),
(465, 316, 331),
(466, 317, 61),
(467, 318, 129),
(468, 319, 157),
(469, 320, 264),
(470, 321, 273),
(471, 322, 17),
(472, 322, 89),
(473, 323, 290),
(474, 323, 140),
(475, 324, 33),
(476, 324, 248),
(477, 325, 349),
(478, 326, 61),
(479, 328, 76),
(480, 328, 118),
(481, 329, 284),
(482, 330, 315),
(483, 330, 213),
(484, 331, 170),
(485, 331, 280),
(486, 332, 350),
(487, 333, 131),
(488, 334, 162),
(489, 334, 48),
(490, 335, 121),
(491, 337, 219),
(492, 337, 317),
(493, 338, 113),
(494, 339, 94),
(495, 339, 203),
(496, 340, 193),
(497, 341, 210),
(498, 341, 37),
(499, 341, 310),
(500, 342, 123),
(501, 344, 60),
(502, 346, 14),
(503, 347, 103),
(504, 349, 293),
(505, 229, 125),
(506, 105, 298),
(507, 345, 272),
(508, 345, 19),
(509, 19, 119),
(510, 52, 250);

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `tome` int(11) DEFAULT NULL,
  `nom_serie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `tome`, `nom_serie`) VALUES
(1, 'Les Maître des Ténèbres', 1, 'Loup Solitaire'),
(2, 'La Traversée Infernale', 2, 'Loup Solitaire');

-- --------------------------------------------------------

--
-- Table structure for table `objet`
--

CREATE TABLE `objet` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objet`
--

INSERT INTO `objet` (`id`, `nom`, `description`) VALUES
(1, 'Repas', 'Vous perdez 3 points d\'ENDURANCE si vous devez prendre un repas et vous n\'en avez pas'),
(2, 'Potion de Guerison', 'Vous rend 4 points d\'ENDURANCE lorsque vous la buvez à l\'issue d\'un combat, mais vous ne disposez que d\'une seule dose.'),
(3, 'Repas', 'Permet de ne pas mourir'),
(4, 'Repas', 'ne pas mourir'),
(5, 'ok', 'k big'),
(6, 'test', 'test'),
(7, '3', '3'),
(8, '4', '4'),
(9, '5', '5'),
(10, '6', '6'),
(11, '7', '7'),
(12, '8', '8'),
(13, '9', '9'),
(14, '1', '1'),
(15, '9', '9'),
(16, '2', '2'),
(17, '1', '1'),
(18, 'test', 'tes'),
(19, '1234', '1234'),
(20, '12', '12'),
(21, '1', '1'),
(22, '1', '1'),
(23, 'test', 'test'),
(24, '123', '123'),
(25, 'repas', 'manger'),
(26, 'nice', 'nce');

-- --------------------------------------------------------

--
-- Table structure for table `sauvegarde`
--

CREATE TABLE `sauvegarde` (
  `id` int(11) NOT NULL,
  `livre_id` int(11) DEFAULT NULL,
  `chapitre_id` int(11) DEFAULT NULL,
  `feuille_aventure_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sauvegarde`
--

INSERT INTO `sauvegarde` (`id`, `livre_id`, `chapitre_id`, `feuille_aventure_id`) VALUES
(29, 1, 346, 48),
(30, 1, 223, 49),
(31, 1, 55, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapitre`
--
ALTER TABLE `chapitre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discipline_kai`
--
ALTER TABLE `discipline_kai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feuille_aventure`
--
ALTER TABLE `feuille_aventure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feuille_aventure_arme`
--
ALTER TABLE `feuille_aventure_arme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arme_id` (`arme_id`),
  ADD KEY `feuille_aventure_id` (`feuille_aventure_id`);

--
-- Indexes for table `feuille_aventure_discipline_kai`
--
ALTER TABLE `feuille_aventure_discipline_kai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discipline_kai_id` (`discipline_kai_id`),
  ADD KEY `feuille_aventure_id` (`feuille_aventure_id`);

--
-- Indexes for table `feuille_aventure_objet`
--
ALTER TABLE `feuille_aventure_objet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objet_id` (`objet_id`),
  ADD KEY `feuille_aventure_id` (`feuille_aventure_id`);

--
-- Indexes for table `lien_chapitre`
--
ALTER TABLE `lien_chapitre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objet`
--
ALTER TABLE `objet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sauvegarde`
--
ALTER TABLE `sauvegarde`
  ADD PRIMARY KEY (`id`),
  ADD KEY `livre_id` (`livre_id`),
  ADD KEY `chapitre_id` (`chapitre_id`),
  ADD KEY `feuille_aventure_id` (`feuille_aventure_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arme`
--
ALTER TABLE `arme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chapitre`
--
ALTER TABLE `chapitre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `discipline_kai`
--
ALTER TABLE `discipline_kai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feuille_aventure`
--
ALTER TABLE `feuille_aventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `feuille_aventure_arme`
--
ALTER TABLE `feuille_aventure_arme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `feuille_aventure_discipline_kai`
--
ALTER TABLE `feuille_aventure_discipline_kai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `feuille_aventure_objet`
--
ALTER TABLE `feuille_aventure_objet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `lien_chapitre`
--
ALTER TABLE `lien_chapitre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `objet`
--
ALTER TABLE `objet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sauvegarde`
--
ALTER TABLE `sauvegarde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feuille_aventure_arme`
--
ALTER TABLE `feuille_aventure_arme`
  ADD CONSTRAINT `feuille_aventure_arme_ibfk_1` FOREIGN KEY (`arme_id`) REFERENCES `arme` (`id`),
  ADD CONSTRAINT `feuille_aventure_arme_ibfk_2` FOREIGN KEY (`feuille_aventure_id`) REFERENCES `feuille_aventure` (`id`);

--
-- Constraints for table `feuille_aventure_discipline_kai`
--
ALTER TABLE `feuille_aventure_discipline_kai`
  ADD CONSTRAINT `feuille_aventure_discipline_kai_ibfk_1` FOREIGN KEY (`discipline_kai_id`) REFERENCES `discipline_kai` (`id`),
  ADD CONSTRAINT `feuille_aventure_discipline_kai_ibfk_2` FOREIGN KEY (`feuille_aventure_id`) REFERENCES `feuille_aventure` (`id`);

--
-- Constraints for table `feuille_aventure_objet`
--
ALTER TABLE `feuille_aventure_objet`
  ADD CONSTRAINT `feuille_aventure_objet_ibfk_1` FOREIGN KEY (`objet_id`) REFERENCES `objet` (`id`),
  ADD CONSTRAINT `feuille_aventure_objet_ibfk_2` FOREIGN KEY (`feuille_aventure_id`) REFERENCES `feuille_aventure` (`id`);

--
-- Constraints for table `sauvegarde`
--
ALTER TABLE `sauvegarde`
  ADD CONSTRAINT `sauvegarde_ibfk_1` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id`),
  ADD CONSTRAINT `sauvegarde_ibfk_2` FOREIGN KEY (`chapitre_id`) REFERENCES `chapitre` (`id`),
  ADD CONSTRAINT `sauvegarde_ibfk_3` FOREIGN KEY (`feuille_aventure_id`) REFERENCES `feuille_aventure` (`id`);
  
--
-- Users
-- L'utilisateur a besoin d'acceder a tous les tables de ma bd
--
CREATE USER 'user_ldvelh' IDENTIFIED BY 'qwerty1234';

GRANT SELECT, INSERT, UPDATE, DELETE
ON LDVELH.*
TO user_ldvelh;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
