-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 12:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xiaomi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_username` text NOT NULL,
  `admin_name` text NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_name`, `admin_password`) VALUES
(1, 'admin', 'admin', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Mi Phone', ''),
(2, 'Poco Phone', ''),
(5, 'Redmi Phone', ''),
(6, 'Smart Devices', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_inquiry`
--

CREATE TABLE `contact_inquiry` (
  `id` int(11) UNSIGNED NOT NULL,
  `fname` varchar(191) DEFAULT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact_inquiry`
--

INSERT INTO `contact_inquiry` (`id`, `fname`, `lname`, `email`, `subject`, `message`, `created_at`) VALUES
(28, 'Alex', 'Lim', 'alexlim@gmail.com', 'Product details', 'how many colour xiaomi mi9 got?', '2023-02-24 11:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_color1` varchar(100) NOT NULL,
  `product_color2` varchar(100) NOT NULL,
  `product_color3` varchar(100) NOT NULL,
  `product_storage1` varchar(100) NOT NULL,
  `product_storage2` varchar(100) NOT NULL,
  `product_storage3` varchar(100) NOT NULL,
  `product_details` text NOT NULL,
  `product_price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `date`, `product_img1`, `product_img2`, `product_img3`, `product_desc`, `product_color1`, `product_color2`, `product_color3`, `product_storage1`, `product_storage2`, `product_storage3`, `product_details`, `product_price`) VALUES
(109, 'Xiaomi Redmi 9T', 5, '2022-01-05 13:47:26', 'Upload202112311764.PNG', 'Upload202112316952.PNG', 'Upload202112314613.PNG', 'Camera\n48MP AI quad rear camera\n• 48MP main camera\n-1/2” sensor size\n-1.6μm 4-in-1 Super Pixel, 0.8μm pixel size\n-f/1.79, 6P lens, AF\n• 8MP ultra-wide-angle camera\n-FOV 120°\n-f/2.2\n• 2MP macro camera\n-1.75μm pixel size, f/2.4, FF\n• 2MP depth sensor\n-1.75μm pixel size, f/2.4\n8MP selfie camera\n-1.12μm pixel size, f/2.05\n\nDisplay & Design\n• 6.53\" FHD+ Dot Drop display\n-Corning® Gorilla® Glass 3 front\n-Brightness: 400 nits (typ)\n-Color temperature adjustment\n-Sunlight mode, Standard mode, Reading mode 2.0\n-TÜV Rheinland Low Blue Light certification\n-L1 Widevine certified\n• Anti-fingerprint texture back\n• Available colors:\n-Carbon Gray, Twilight Blue, Sunrise Orange, Ocean Green\n• Dimensions: 162.3mm x 77.3mm x 9.6mm\n• Weight: 198g\n\nPerformance\n• Qualcomm® Snapdragon™ 662 mobile platform\n-Qualcomm® Kryo™ 260, octa-core CPU, up to 2.0GHz\n-Qualcomm® Adreno™ 610 GPU\n-11nm manufacturing process\n-3rd generation Qualcomm® AI Engine\n• UFS 2.1 (64GB)/UFS 2.2(128GB) storage\n• Dual speakers, dust blaster, Hi-Res Audio Certified\n\nBattery & Charging\n• 6,000mAh (typ) battery\n• 18W fast charging\n-In-box charger 22.5W\n-Reverse wired charging*\n• USB-C port\n\nConnectivity\n• Dual SIM + microSD\n-Expandable storage up to 512GB\n• Bands\n-2G: GSM: B2/3/5/8\n-3G: WCDMA: B1/2/4/5/8\n-4G: TDD-LTE: B38/40/41(2535-2655MHz)\n-4G: FDD-LTE: B1/2/3/4/5/7/8/20/28\n• Wireless Network:\n-2.4GHz/5GHz WIFI\n• Bluetooth 5.0\n• IR Blaster\n• FM radio (with headphones)', 'gray', 'blue', 'orange', '4GB + 64GB', '', '', 'Wonderful in all aspects! 48MP AI quad camera｜Ultra-wide angle and macro lenses 6000mAh (typ) high charge cycle battery｜18W fast charging Qualcomm® Snapdragon™ 662｜Octa-core CPU, up to 2.0GHz 6.53” FHD+ Dot Drop display｜Dual speakers', 'RM599'),
(110, 'Xiaomi Redmi 10', 5, '2022-01-05 13:48:09', 'Upload202112319286.PNG', 'Upload202112316356.PNG', 'Upload20211231218.PNG', 'Display and Design\n•6.5-inch FHD+ DotDisplay\n-2400 x 1080 resolution\n-90Hz refresh rate with AdaptiveSync display (45/60/90Hz)\n-Reading mode 3.0, Sunlight display\n•Dimensions: 161.95 x 75.53 x 8.92mm\n•Weight: 181g\n•Color: Carbon Gray, Pebble White, Sea Blue\n\nBattery and Charging\n•5000mAh (typ) battery\n•18W fast charging, 9W reverse wired charging1\n•Inbox 22.5W charger with USB-C port\n\nCamera\n•50MP Al quad rear camera\n-50MP main camera\nf/1.8\n-8MP ultra-wide-angle camera\nFOV120°, f/2.2\n-2MP macro camera\nf/2.4\n-2MP depth sensor\nf/2.4\n•Front camera\n-8MP front camera\nf/2.0\n\nPerformance\n•MediaTek Helio G88\n-12nm process technology\n-Octa-core CPU\n2x Arm Cortex-A75 @ Up to 2.0GHz\n6xArm Cortex-A55 @ Up to 1.8GHz\n-Mali-G52 MC2\n•4GB + 64GB; 6GB + 128GB\n•microSD expandable storage up to 512GB\nAudio\n•Dual speakers; 3.5mm headphone jack\n\nConnectivity\n•Dual SIM\n•Network Bands3:\n-2G: GSM: 850 900 1800 1900 MHz\n-3G: WCDMA: B1/2/4/5/8\n-4G: LTE FDD: B1 /2/3/4/5/7/8/12/17/20/28/32/66\n-4G: LTETDD: B38/40/41\n•Wireless Networks:\n-2.4GHz/5GHz WIFI; Bluetooth 5.1; IR Blaster; FM radio (with headphones)\n•NFC4 support\n\nSecurity\n•Side fingerprint sensor; Al Face Unlock', 'gray', 'white', 'blue', '4GB + 64GB', '6GB + 128GB', '', 'Redmi 10 Level Up  50MP AI Quad Camera: Dual speakers 90Hz 6.5', 'RM649 / RM749'),
(111, 'POCO M3', 2, '2022-01-05 13:51:19', 'Upload202112317227.PNG', 'Upload202112319101.PNG', 'Upload202112312970.PNG', '48MP triple camera. 6000mAh battery. Snapdragon™ 662.\n\nCamera:\n48MP+2MP+2MP AI triple rear camera\n48MP+2MP+2MP AI triple rear camera\n- 48MP main camera:\n- 1/2\" sensor size\n- 1.6μm 4-in-1 Super Pixel, 0.8μm pixel size\n- f/1.79, 6P lens, AF\n- 2MP macro camera:\n- 1.75μm pixel size, f/2.4, FF\n- 2MP depth sensor:\n- 1.75μm pixel size, f/2.4\n• 8MP front camera\n- 1.12μm pixel size, f/2.05\n• Night mode, Movie frame, Time-lapse,\n120fps slow motion video\n\n• 6,000mAh (typ) battery\n• 18W fast charge\n• In-box 22.5W charger\n• USB-C\n• Reverse wired charging**\n\nQualcomm® Kryo™ 260, 11nm manufacturing process\nCPU frequency: Octa-core processor, up to 2.0 GHz\nGPU: Adreno™ 610 GPU\nAI: 3rd gen Qualcomm® AI Engine\nStorage and RAM\n4GB + 128GB\nLPDDR4X + UFS 2.2\n4GB + 64GB\nLPDDR4X + UFS 2.1\n\nDimensions\nHeight: 162.3mm\nWidth: 77.3mm\nThickness: 9.6mm\nWeight: 198g', 'black', 'blue', 'yellow', '4GB + 128GB', '', '', 'More than you expect 48MP triple camera. 6000mAh battery. Snapdragon™ 662.', 'RM699'),
(112, 'POCO X3', 2, '2022-01-05 13:50:57', 'Upload202112314513.PNG', 'Upload202112314232.PNG', '', 'Qualcomm® Snapdragon™ 732G\nUp to 2.3GHz, octa-core CPU\n120Hz 6.67” FHD+ DotDisplay\n240Hz touch sampling rate\n64MP AI quad camera\n20MP in-display front camera\n5,160mAh (typ) battery\n33W fast charging\n\nPerformance\n• Qualcomm® Snapdragon™ 732G\n- Kyro™ 470 octa-core CPU,\n- Adreno™ 618 GPU with Elite Gaming\n• LiquidCool Technology 1.0 Plus\n• LPDDR4X RAM, UFS 2.1 storage\n- 6GB+64GB, 6GB+128GB\n• Hybrid SIM slot, up to 256GB expandable storage\n• LiquidCool Technology 1.0 Plus\n- Copper heat pipe + graphite\n• MIUI 12 for POCO, based on Android 10\n\nDisplay & Design\n• 6.67” FHD+ LCD DotDisplay\n- 20:9, 2400x1080, 395ppi\n- 240Hz touch sampling rate\n- 120Hz refresh rate\n- Color gamut: NTSC 84% (typ), DCI-P3 87.4%\n- Contrast ratio: 1,500:1(typ)\n- Brightness: 450 nits (typ) / 380 nits (min)\n- TÜV Rheinland Low Blue Light Certification\n- HDR10\n• Dimensions:165.3mm x 76.8mm x 9.4mm\n• Weight: 215g\n• Available colors: Shadow Gray, Cobalt Blue\n• 2.5D glass front, 3D curved back\n• Corning® Gorilla® Glass 5 front\n• Polycarbonate back\n• Super aluminum alloy frame\n• Side-mounted fingerprint sensor\n• Splash-proof protection, IP53 TÜV SÜD tested\n\nBattery / charging\n• 5,160mAh (typ) high-capacity battery\n• 33W fast charging\n• 33W in-box charger\n• USB Type-C\n\nAudio\n• Dual Stereo Speakers\n- 4cc-equivalent 1012 upper speaker, open cavity\n- 1cc-equivalent 1216 lower speaker\n- Maximum speaker vibration amplitude: 0.5mm\n\nCamera\n64MP+13MP+2MP+2MP quad rear camera\n• 64MP main wide sensor\n- Sony IMX682\n- 1/1.73“ sensor, ƒ/1.89, 1.6μm 4-in-1 Super Pixel, 6P lens\n• 13MP ultra wide-angle sensor\n- 119° FoV, ƒ/2.2, 1.0μm\n• 2MP macro sensor\n- ƒ/2.4, 1.75μm, 4cm\n• 2MP depth sensor\n- ƒ/2.4, 1.75μm, FF\n• Up to 4K 30fps, video recording\n• AI Skyscaping 3.0, Night Mode, ShootSteady video, Vlog Mode\n20MP in-display front camera\n• ƒ/2.2, 1.6μm 4-in-1 Super Pixel\n\nConnectivity\n• Dual SIM, dual standby\n• Bands:\n- 2G: GSM: B2/3/5/8\n- 3G: WCDMA: B1/2/4/5/8\n- TDD-LTE B38/40/41􀊢120MHz􀊣\n- FDD-LTE B1/2/3/4/5/7/8/20/28\n• Wi-Fi 5\n• Bluetooth 5.1\n• 3.5mm headphone jack', 'black', 'blue', '', '6GB + 64GB', '', '', 'Exactly What You Need Qualcomm® Snapdragon™ 732G Up to 2.3GHz, octa-core CPU 120Hz 6.67” FHD+ DotDisplay 240Hz touch sampling rate 64MP AI quad camera 20MP in-display front camera 5,160mAh (typ) battery 33W fast charging', 'RM899'),
(114, 'Xiaomi Redmi Note 10 Pro', 5, '2022-01-05 13:56:38', 'Upload202112313546.PNG', 'Upload202112312918.PNG', 'Upload202112316768.PNG', 'The 108MP Voyager Camera\n108MP quad camera\n• 108MP wide-angle camera\n- 1/1.52” sensor size, 2.1μm 9-in-1 Super Pixel\n- ƒ/1.9\n- 6P lens\n• 8MP ultra-wide camera\n- 118° FOV\n- ƒ/2.2\n• 5MP telemacro camera\n- ƒ/2.4\n- AF\n• 2MP depth sensor\n- ƒ/2.4\n16MP front camera\n• ƒ/2.45\n\nDisplay & Design\n• 120Hz AMOLED 6.67” DotDisplay\n- Refresh rate: 120Hz\n- Sampling rate: up to 240Hz\n- Contrast ratio: 4,500,000:1\n- Color gamut: DCI-P3\n- Brightness: 450 nits (typ), HBM 700 nits (typ),\n1200 nits peak brightness (typ)\n- HDR10 certification\n- Reading mode 3.0\n- Sunlight display 2.0\n- SGS Eye Care Display Certification\n• Corning® Gorilla® Glass 5 front\n• Colors*: Onyx Gray, Glacier Blue,\nGradient Bronze\n• Dimensions: 164mm × 76.5mm × 8.1mm\n• Weight: 193g\n• IP 53 Splash-proof tested**\n\nAudio\n• Dual speakers\n• 3.5mm headphone jack\n• Hi-Res Audio certification\n\nPerformance\n• Qualcomm® Snapdragon™ 732G\n- Qualcomm® Kryo™ 470, Octa-core CPU,\nup to 2.3GHz\n- 8nm manufacturing process\n- Qualcomm® Adreno™ 618 GPU\n6GB+128GB, 8GB+128GB*\n- LPDDR4X RAM\n- UFS 2.2 storage\n• Z-axis linear vibration motor\n• MIUI 12 based on Android 11\n\nBattery & Charging\n• 5,020mAh (typ) high-capacity battery\n• 33W fast charging\n• 33W in-box charger\n\nConnectivity\n• Dual SIM\n• Bands:\n- LTE FDD: B1/2/3/4/5/7/8/20/28/32\n- LTE TDD: B38/40/41(MHz 2535-2655)\n- WCDMA: 1/2/4/5/8\n- GSM: 850/900/1800/1900\n• Multi-functional NFC*\n• IR blaster\n• USB Type-C\n\nSecurity\n• Arc side fingerprint sensor\n• AI face unlock', 'gray', 'blue', 'orange', '6GB + 128GB', '8GB + 128GB', '', 'Touting a 108MP rear quad camera with 9-in-1 pixel-binning and Dual native ISO technologies, Redmi Note 10 Pro captures stunningly detailed images with its improved processing and higher dynamic range. Rethink everything you currently know about night shooting with Redmi Note 10 Pro’s Night mode 2.0, which uses an advanced RAW multi-frame algorithm for crisp and bright images. Hoping for your content to go viral? Redmi Note 10 Pro helps you get there with new creative photo and video features, including Pro time-lapse, Dual Video, Long exposure, telemacro, and ShootSteady modes.', 'RM 999 / RM 1199'),
(115, 'Xiaomi Mi 11', 1, '2022-01-05 13:57:07', 'Upload202112313523.PNG', 'Upload202112317086.PNG', '', 'Camera\n108MP + 13MP + 5MP triple rear camera\n• 108MP wide-angle camera\n- Samsung HMX, 1/1.33” sensor size, f/1.85, 7P lens\n- OIS, AF\n- 0.8μm pixel size, 1.6μm 4-in-1 Super Pixel\n• 13MP ultra-wide-angle camera\n- 123° FOV, f/2.4 aperture\n• 5MP telemacro camera\n- f/2.4, AF (3cm-10cm)\n\nLED flash\n20MP in-display selfie camera\n• 0.8μm pixel size,\n• 1.6μm 4-in-1 Super Pixel\n• f/2.2 aperture\n\nDisplay & Design\n120Hz 6.81” WQHD+ AMOLED quad-curve DotDisplay with True Color\n• WQHD+, 3200 x 1440\n• Aspect ratio: 20:9, 515 ppi\n• JNCD≈0.38，△E≈0.41\n• Color gamut: Supports DCI-P3\n• 10-bit color\n• Brightness: HBM 900 nits (typ), 1500 nits peak brightness\n• Contrast ratio: 5,000,000:1 (typ)\n• Supports AdaptiveSync in 30Hz/60Hz/90Hz/120Hz\n• 480Hz touch sampling rate\n• HDR10+\n• Sunlight mode 3.0/Reading mode 3.0\n• 360° ambient light sensor 2.0\n• Super Resolution technology\n• Hardware-level mistouch prevention\n\nDimensions:\n- 164.3mm x 74.6mm x 8.06mm 196g\nAvailable colors:\n- Anti-glare frosted glass: Midnight Gray/ Horizon Blue*\nCorning® Gorilla® Glass Victus™ front\nAudio\n• Dual speakers, SOUND BY Harman Kardon\n• Hi-Res Audio Certification\n• Hi-Res Audio Wireless Certification\n\nPerformance\n• Qualcomm® Snapdragon™ 888\n- 5nm power-efficient manufacturing process\n- Octa-core design, ultra-large core Arm Cortex-X1\n- AdrenoTM 660 GPU, 6th generation Qualcomm® AI engine\n- X60 modem for lightning-fast 5G connectivity\n- Wi-Fi 6\n• 8GB+128GB, 8GB+256GB\n- Enhanced LPDDR5 3200MHz RAM + UFS 3.1 storage\n• X-axis linear vibration motor\n\nBattery and charging\n• 4,600mAh (typ) battery\n• 55W wired charging (charges to 100% in 45 mins**)\n• 50W wireless charging (charges to 100% in 53 mins**)\n• 55W GaN charger included\n\nConnectivity\n• Dual SIM, supports 5G standby***\n• Bands:\n- 5G: n1/n3/n5/n8/n20/n28/n38/n41/n77/n78/n79\n- 4G: LTE FDD: B1/2/3/4/5/7/8/12/17/20/28/32/66\n- LTE TDD: B38/40/41/42\n- 3G:WCDMA: 1/2/4/5/8\n- 2G: GSM: 850 900 1800 1900 MHz\n• USB Type-C\n• Multi-functional NFC and IR blaster\n• Bluetooth 5.2\n\nSecurity\n• In-screen fingerprint sensor with a heart rate monitor****\n• AI face unlock', 'gray', 'blue', '', '8GB + 256GB', '', '', 'Cinematic 108MP, enhanced night modes Cinematic audio, SOUND BY Harman Kardon WQHD+ ultimate-clear 120Hz display Iconic lightweight design Flagship Qualcomm® Snapdragon™ 888 Connect to 5G with flagship speed 55W wired + 50W wireless turbo charging Long lasting through day and night', 'RM 2999'),
(116, 'Xiaomi Mi 11T', 1, '2022-01-05 13:57:42', 'Upload202112312519.PNG', 'Upload202112315284.PNG', 'Upload20211231689.PNG', 'Performance\nMediaTek Dimensity 1200-Ultra\n-6nm power-efficient manufacturing process\n-CPU up to 3.0GHz\n-UFS 3.1 storage\n-8GB+128GB, 8GB+256GB\n\nCamera\n108MP + 8MP + 5MP triple rear camera\n108MP wide-angle camera\n-f/1.75, 7P lens\n-EIS, AF\n-2.1μm 9-in-1 Super Pixel\n8MP ultra-wide angle camera\n-120º FOV, f/2.2\n5MP telemacro camera\n-f/2.4 -AF (3cm-7cm)\n16MP front camera\n-1.0μm pixel size, 1.0μm f/2.45\n\nDisplay & Design\n120Hz 6.67” flat AMOLED DotDisplay\n-Up to 480Hz touch sampling rate\n-Aspect ratio: 20:9 -FHD+, 2400x1080\n-Over 1 billion colors, TrueColor display\n-Brightness: HBM 800 nits(typ), 1000 nits peakbrightness (typ)\n-Contrast ratio: 5,000,000:1 (typ)\n-AdaptiveSync: 60Hz/120Hz\n-HDR10+\n-Sunlight mode 3.0, Reading mode 3.0\n360º ambient light sensor\nDimensions: 203g, 164.1mm x 76.9mm x 8.8mm\nCorning Gorilla Glass Victus™ front\nColors: Meteorite Gray, Moonlight White and Celestial Blue\n\nAudio\nDedicated Dual speakers\nDolby Atmos\n\nConnectivity\nType-C\nDual SIM, dual 5G standby**\nBluetooth 5.2\nSupports NFC\nBands: -5G: n1/n3/n5/n7/n8/n20/n28/n38/n40/n41/n66/n77/n78\n- 4G: LTE FDD:B1/2/3/4/5/7/8/12/13/17/18/19/20/26/28/32/66\n-LTE TDD: B38/40/41/42\n- 3G: WCDMA: B1/2/4/5/8/19\nWi-Fi 6\n\nCharging\n67W wired turbo charging\n5000mAh (typ)\nIn-box charger: 67W charger\n\nSecurity\nArc side fingerprint sensor\n\nCreate “cinemagic” with a 108MP and One-Click AI cinema.', 'gray', 'white', 'blue', '8GB + 128GB', '8GB + 256GB', '', 'Xiaomi 11T Cinemagic Performance MediaTek Dimensity 1200-Ultra -6nm power-efficient manufacturing process -CPU up to 3.0GHz -UFS 3.1 storage -8GB+128GB, 8GB+256GB', 'RM 1699 / RM 1899'),
(117, 'Redmi Note 8', 5, '2022-01-05 13:59:43', 'Upload202201022617.jpeg', 'Upload202201021474.jpg', 'Upload202201021451.jpg', 'Performance:\n• Qualcomm® Snapdragon™ 665 Octa-core processor\n- Frequency: up to 2.0GHz\n- AdrenoTM 610 graphics processor\n- Qualcomm® 3rd generation AI engine\n- 3GB + 32GB / 4GB + 64GB available\n\nRear Camera:\n48MP Full scene quad camera\n• 48MP ultra-high resolution primary camera\n- 48MP, 0.8μm, 1/2\" sensor, FOV 79.4°\n- f/1.75 aperture, 6 pieces lens, AF, supports 4-in-1 Super Pixel (12MP, 1.6μm)\n• 8MP ultra wide-angle camera\n- 8MP, 1.12μm, FOV 120°, f/2.2 aperture\n• 2MP macro camera\n- 2MP, 1.75μm, f/2.4 aperture, AF\n• 2MP depth camera\n- 2MP, 1.75μm, f/2.4 aperture\n• Photo resolution: 8000 x 6000\n• Video resolution: up to 4K\n• Single-tone flash\n\nFront camera:\n13MP Front Camera\n- 13MP, 1.12μm\n- f/2.0 aperture\n\nAudio:\n- 1217 ultra-linear speakers\n- Smart PA, equivalent to a 0.93cc super-large sound chamber\n- Speaker sound waves clear away dust\n\nScreen:\n6.3” (diagonally)* Dot Drop Full Screen Display\nResolution 2340 x 1080 FHD + 19.5:9\nContrast Ratio: 1500:1 (typ)\nNTSC: 84% (typ)\nSunlight display | Night mode | Eye protection mode | Color temperature adjustment\nLow blue light TÜV Rheinland-certified display\nCorning®️Gorilla®️Glass 5\n\nBattery and Charging:\n- 4000mAh(typ), 3900mAh(min)\n- Supports 18W Fast Charge\n\nNetwork & Connectivity:\n• Communications\nSupports 2+1 card slot, nano-SIM + nano-SIM + microSD\n4G / 3G / 2G\nSupports dual SIM VoLTE HD calling\n• Network Band\n4G:\nLTE FDD: B1/2/3/4/5/7/8/20\nLTE TDD: B38/40\n3G: WCDMA: B1/2/4/5/8\n2G: GSM: B2/3/5/8\n\n• Wireless Network\nWLAN Protocol: 802.11a/b/g/n/ac\nWLAN Frequency: 2.4G Wi-Fi | 5G Wi-Fi\nSupports Wi-Fi Direct, Wi-Fi Display\nSupports Bluetooth 4.2\nSupports radio', 'blue', 'white', 'black', '3GB + 32GB', '4GB + 64GB', '', '48MP Quad Camera All-Star 48MP AI quad camera Qualcomm® Snapdragon™ 665 4000mAh high-capacity battery', 'RM549'),
(118, 'Redmi Note 8 Pro', 5, '2022-01-05 14:00:05', 'Upload202201026061.jpg', 'Upload20220102417.jpg', 'Upload202201027794.jpg', 'Rear camera:\n• 64MP AI Quad Camera\n- 64MP ultra high-resolution primary camera\n- 64MP，0.8μm，1/1.7\"CMOS image sensor, 1.6μm 4-in-1 Super Pixel, f/1.89，FOV 79°\n\n120° ultra-wide angle lens\n- 8MP，1.12μm，f/2.2，FOV 120°\n\n2cm ultra-macro lens\n- 2MP，1.75μm\n\ndepth sensor\n- 2MP，1.75μm\n\nZoom:10x digital zoom\nFocus: Phase detection focus | Contrast detection focus\nPhoto resolution: up to 9248 x 6936 pixels\nVideo resolution: up to 3840x2160 pixels\nSingle-tone flash\n\nFront Camera:\n• 20MP Front Camera\n- 20MP，0.9μm，f/2.0\n\n• Front camera photography features\nPanorama selfie | Palm shutter | AI silhouette detection | Front camera HDR | Front camera display brightness correction | Face recognition\nAI Beautify | AI portrait mode | AI scene detection | AI studio lighting\n\nProcessor:\n• Helio G90T gaming processor\nCPU name: MTK Helio G90T, octa-core gaming processor\n2 x A76 2.05GHz large core\n6 x A55 2.0GHz small core\nGPU： ARM Mali G76 MC4\n\nStorage and RAM:\n6GB + 128GB\nRAM: 6GB LPDDR4x 2133MHz dual-channel\nROM: 64GB/128GB UFS2.1 flash storage\n\nDisplay:\n• 6.53\" Dot Drop Full Screen Display\n- Resolution: 2340 x 1080 FHD+\n- Brightness: 500nit (typ) / 420nit (min)\n- Contrast: 1500:1 (typ) | NTSC: 84% (typ)\nStandard mode | Sunshine mode | Night mode | Color temperature adjustment |\n- 256 ranks adjustable Reading mode certified by TÜV Rheinland\n- Corning® Gorilla® Glass 5\n- Anti-oil and anti-fingerprint protective coating\n- Supports HDR display\n\nCharging and battery:\n• 4500mAh（typ）\n- Built-in rechargeable battery\n- USB Type-C reversible connector port\n• Supports 18W wired fast charging\n- Includes 18W wire charger*', 'white', '#005953', 'black', '6GB + 64GB', '6GB + 128GB', '', 'Redmi Note8 Pro, Pioneer of 64MP Quad Camera', 'RM1099'),
(119, 'Redmi Note 9S', 5, '2022-01-05 14:00:23', 'Upload20220103179.jpg', 'Upload20220103761.png', 'Upload202201033848.jpg', 'Processor:\n• Qualcomm® Snapdragon™ 720G\n- High-performance octa-core processor\n- Frequency: up to 2.3GHz\n- Adreno™ 618 graphics processor\n- Qualcomm® 5th generation AI engine\n- 8nm process technology\n\nBattery and Charging:\n• 5020mAh (typ)*\nBuilt-In Non-removable Lithium Ion Polymer Battery\n• USB Type-C reversible connector port\nSupports 18W wired fast charging\nIncludes 22.5W wire charger\n\nDisplay:\n• 6.67\" DotDisplay\nResolution: 2400 x 1080 FHD+\nContrast: 1500:1 (typ) | NTSC: 84% (typ)\nTÜV Rheinland low blue light certification\nReading mode 2.0\nCorning® Gorilla® Glass 5\n\nRear Camera:\n48MP AI quad camera\n• 48MP ultra-high resolution primary camera\n- 48MP, 1/2\" sensor, FOV 79°\n- f/1.79 aperture, 6 piece lens, AF\n- 1.6μm 4-in-1 Super Pixel, 0.8μm pixel size\n• 8MP ultra wide-angle camera\n- 8MP, 1.12μm, FOV 119°, f/2.2 aperture\n• 5MP macro camera\n- 5MP, 1.12μm, f/2.4 aperture, AF (2cm-10cm)\n• 2MP depth camera\n- 2MP, 1.75μm, f/2.4 aperture\nPhoto resolution: 8000 x 6000\nVideo resolution: up to 4K\nDual flash lights\n\nFront Camera:\n• 16MP In-Display Front Camera\n16MP, 1.0μm\nf/2.48 aperture\n• Front camera photography features\nPanorama selfie | Palm shutter | AI silhouette detection | Front camera HDR | Front facing flash | Face recognition\nAI Beautify | AI portrait mode | AI scene detection\n• Front camera video features\n120fps Slo-Selfie\n\nStorage and RAM:\n6GB + 128GB\n\nNetwork & Connectivity:\n• Communications\n- Supports 2+1 card slot, nano-SIM + nano-SIM + microSD (512GB expandable)\n- Supports dual SIM VoLTE HD calling\n• Network & Connectivity\n- GSM: B2/3/5/8\n- WCDMA: B1/2/4/5/8\n- TDD LTE: B38/40\n- FDD LTE: B1/2/3/4/5/7/8/20/28\n• Wireless Network\n- Supports protocols: 802.11a/b/g/n/ac\n- Supports 2.4G Wi-Fi / 5G Wi-Fi\n- Wi-Fi Direct / Wi-Fi Display\n- Supports Bluetooth 5.0', 'grey', '#005953', 'white', '6GB + 128GB', '', '', 'Power to win', 'RM879'),
(120, 'Redmi Note 9', 5, '2022-01-05 14:01:13', 'Upload202201033306.jpg', 'Upload202201036955.jpg', 'Upload202201032845.jpeg', 'Processor:\n• MTK Helio G85\n- High-performance octa-core processor\n- Frequence:up to 2.0Ghz\n- GPU: ARM G52 MC2, up to 1000MHz\n- MediaTek HyperEngine\n\nBattery and Charging:\n• 5020mAh (typ)*\n• Supports 18W fast charge\n- in-box charge:22.5W\n- Supports 9W (Max) wired reverse charging\n\nDisplay:\n6.53\" DotDisplay\nResolution:2340x1080 FHD+| 19.5:9\n450nit(typ) brightness\nColor contrast ratio:1500:1(typ)\nNTSC:84%(typ)\nTÜV Rheinland low blue light certification\nReading mode 2.0\nFull Screen gestures\nPlastic frame\nCorning® Gorilla® Glass 5 front\nSplash-proof nano coating\n\nRear Camera:\n48MP AI quad camera\n• 48MP main camera\n- 1/2\" sensor size\n- 1.6μm 4-in-1 Super Pixel, 0.8μm pixel size\n- f/1.79\n- AF,6P lens,FOV 79.4°\n• 8MP ultra wide-angle camera\n- FOV 118°\n- f/2.2\n- 1/4\" sensor size\n- 1.2μm pixel size,5P lens\n• 2MP Macro camera\n- AF (2cm-10cm)\n- 1.75μm pixel size\n- f/2.4 aperture\n• 2MP depth camera\n- 1/5\" sensor size,\n- 1.7μm pixel size\n- 3P lens, f/2.4 FF\n\nFront Camera:\n• 13MP In-Display Front Camera\n- 1.12μm pixel size\n- 1/3.06\" sensor size\n- f/2.25,5P lens,74°FOV\n\nStorage and RAM:\n4GB + 128GB\n3GB + 64GB', 'grey', '#005953', 'white', '3GB + 64GB', '4GB + 128GB', '', '48MP Quad Camera Hotshot', 'RM1388'),
(123, 'POCO F2 Pro', 2, '2022-01-05 14:01:32', 'Upload202201032707.jpg', 'Upload202201038347.jpg', 'Upload20220103520.jpg', 'Performance:\n- Qualcomm Snapdragon 865 flagship platform\nQualcomm Kryo 585, 7nm Process Technology\nCPU frequency: Octa-core processor, up to 2.84GHz\n\nStorage and RAM:\n8GB + 256GB\nLLPDDR5 + UFS 3.1\n6GB + 128GB\nLPDDR4X + UFS 3.1\n\nDisplay:\n• 6.67\" Dot Drop Full Screen Display\n- Corning® Gorilla® Glass 5 front and back\n- Resolution: 2400×1080 FHD+\n- Brightness: 500 nits (typ) / 800 nits (HBM)\n- Aspect ratio: 20:9 | 92.7% screen-to-body ratio\nContrast ratio: 500,000:1(typ) | Color range: NTSC 98%(typ)\n- 60Hz refresh rate, 180Hz sample rate\n- TÜV Rheinland Full Care Display Certification\n- Support HDR10+ and Netflix HD streaming\n\nRear Camera:\n64MP AI Quad Camera\n• 64MP main wide sensor\nSony IMX686, 1.6μm 4-in-1 Super Pixel, 1/1.7“ sensor size, ƒ/1.89 aperture\n• 13MP ultra wide-angle sensor\n123° FoV, ƒ/2.4 aperture\n• 5MP macro camera\n1.12μm pixel size, ƒ/2.2 aperture, AF (3cm-10cm)\n• 2MP depth sensor\n1.75μm pixel size, ƒ/2.4 aperture\n\nFront Camera:\n20MP pop-up front camera\n• Front camera photography features\nAI camera | Portrait mode | Panorama selfie | Full screen camera frame | Palm shutter | Front camera HDR | Front camera flash(via display) | Selfie timer | Eye light | AI Beautify | AI feature adjustment | AI makeup | AI scene detection | AI studio lighting\n• Front camera video features\nAI Beautify | Short video mode | Short video filter\n1080p video recording 30fps\n720p video recording 30fps\nSlow-motion video\n120fps 720P\n\nCharging and battery:\n• 4700mAh(typ) / 4600mAh(min)*\nSupports 30W fast charge\nBuilt-in rechargeable battery\nUSB Type-C reversible connector port\nSupports QC4.0+/ PD 3.0 quick charging protocol\n33W charger included in-box , PD charging protocol\n\nAudio:\n1216 super-linear speaker\nDual smart PA high volume boost\n\nNetwork & Connectivity:\nDual SIM card ① | Dual Nano-SIM slot\nSupports network bands\n5G: Sub6G: n77/n78\n4G: FDD-LTE: 1/2/3/4/5/7/8/20/28\n4G: TDD-LTE: 38/40/41\n3G: WCDMA: 1/2/4/5/8\n3G: EVDO: BC0\n2G: GSM: B2/B3/B5/B8\nSupports 4x4 MIMO | HPUE | HO RxD\n\nWireless network\nSupports protocols: 802.11a/b/g/n/ac/ax\nSupports 2.4G Wi-Fi / 5G Wi-Fi\nSupports 2x2 MIMO, 8x8 Sounding for MU-MIMO, Wi-Fi Direct, Miracast,\nSupports Bluetooth 5.1, Qualcomm TrueWireless™ Stereo Plus\nSupport AAC/ LDAC/ LHDC / aptX™/ aptX™ HD/ aptX™ -Adaptive', '#b19cd9', 'white', 'black', '6GB + 128GB', '8GB + 256GB', '', 'Powerfully Cool', 'RM1199'),
(124, 'POCO M4 PRO 5G', 2, '2022-01-05 14:02:00', 'Upload202201038425.PNG', 'Upload202201031432.PNG', 'Upload202201039590.PNG', 'Storage & RAM:\n4GB+64GB, 6GB+128GB\nLPDDR4X RAM + UFS 2.2 storage\nExpandable storage up to 1TB\n\nDisplay:\n6.6\" FHD+ Dot Display\n2400x1080 FHD+\nRefresh rate: 90Hz\nTouch sampling rate: Up to 240Hz\nDCI-P3 wide color gamut\nSunlight display\n\nProcessor:\nMediaTek Dimensity 810\nCPU: Octa-core CPU, up to 2.4GHz\nGPU: ARM Mali-G57\n6nm manufacturing process\n\nBattery & Charging:\n5000mAh (typ) battery\n33W Pro fast charging\n\nCamera:\n50MP main camera\nf/1.8\n8MP ultra-wide angle camera\nFOV 119°\nf/2.2\nRear camera video recording\n1080p 1920x1080 | 60fps, 30fps\n720p 1280x720 | 30fps\n16MP front camera\nf/2.45\n\nNetwork & Connectivity:\nDual SIM, dual standby: 5G+5G\nNetwork bands:\nSupports 5G/4G/3G/2G\n5G: n1/3/5/7/8/20/28/38/40/41/66/77/78\n4G:\nFDD-LTE Band 1/2/3/4/5/7/8/12/17/20/28/32/66\nTDD-LTE Band 38/40/41\n3G: WCDMA Band 1/2/4/5/8\n2G: GSM 850/900/1800/1900MHz\n\nAudio:\nDual speakers\n3.5mm headphone jack', 'yellow', 'cyan', 'black', '4GB + 64GB', '6GB + 128GB', '', 'Power up your fun, Dimensity 810 5G, 90Hz refresh rate, 33W Pro fast charging', 'RM749'),
(125, 'Xiaomi 11 Lite 5G NE', 1, '2022-01-05 14:02:45', 'Upload202201032046.jpg', 'Upload202201036802.jpg', 'Upload202201033978.jpg', 'Display\n• 6.55-inch AMOLED DotDisplay (2400 x 1080 FHD+)\n• 1 0-bit color depth with TrueColor and DCI P3\n• 90Hz refresh rate and 240Hz touch samDling rate\n• Dolby Vision and HDR 1 0+ support\nPerformance\n• Qualcomm Snapdragon\" 778G 6nm manufacturing process 6th Gen Qualcomm AI Engine\n• 6GB+128GB, 8GB+128GB, 8GB+256GB UFS 2.2 + LPDDR^X\n• 33W fast charging, 33W in box charger\nCamera\n64MP + 8MP + SMP triple rear camera\n• 64MP main camera\n1 /1.97“ sensor size, 0 7pm 4-in 1 SuDer *ixel f/J.79 aDerture, 6P lens\n• 8MP ultra wide anple camera\n- /4“ sensor size, J 2pm\n- f/2.2 aperture, 5P lens\n• SMP telemacro camera\n- .5“ sensor size, 1.12um, f/2.4 aperture, 4P lens\n20MP Selfie camera\nAudio\n- Dual speakers\n\nConnectivity\n- SG* Dual SIM\n• Bluetooth 5.2\n• Network bands:\nSG NR: n1, n3, n5, n7, n8, n20, n28, n38, n41, n66, n77, n78;\nLTE TDD: 1 /2/3/4/ 5/7/8/12/13/17/18/19/20/26/28/32/66; WCDMA: 1/2/4/ 5/6/8/19; 2G GSM: 2/3/ 5/ 8;\nLTE TDD: 38/40/4J /42;\n• Wireless Networks:\n2.4Hz Wi Fi/ 5CHz Wi Fi/Wi Fi 6; Wi Fi Direct, Wi Fi DisDlay\n\nOther\n• NFC\" support; 0832L linear motor\nProduct weight and related specifications are theoretical values only. Actual measurements between individual products may vary. Any specifications are subject to the actual product.', 'blue', 'pink', 'white', '6GB + 128GB', '8GB + 128GB', '8GB + 256GB', 'Own Your Style, Featherweight design with fashionable colors', 'RM1599'),
(126, 'Xiaomi Mi 11T Pro', 1, '2022-01-05 14:03:13', 'Upload202201032123.PNG', 'Upload202201033557.PNG', 'Upload202201032319.PNG', 'Camera\n108MP wide-angle camera f.\n1.75, 7P lens\n2.1µm 9-in-1\nSuper Pixel 8K recording\nHDR10+ recording\n8MP ultra-wide-angle camera 120º FOV, f/\n2.2 5MP telemacro camera f/\n2.4, 3-7cm Auto Focus\nNight mode\nAl Night mode Dual Native ISO\nSelfie Night mode\n\nCharging\n120W Xiaomi HyperCharge\nHyperCharge 5,000mAh (typ)**\nInbox 120W wired charger\n\nDisplay & Design\n120Hz 6.67” AMOLED flat DotDisplay\nUp to 480Hz touch sampling rate\nAspect ratio: 20:9\nFHD+, 2400x1080\nTrueColor Over 1 billion colors\nBrightness: HBM 800 nits(typ), 1000 nits peak brightness(typ)\nContrast ratio: 5,000,000:1 (typ) 120Hz\nAdaptiveSync HDR10+\nSunlight mode 3.0, Reading mode 3.0\n360º ambient light sensor MEMC\n\nAudio\nDedicated dual speakers\nSOUND BY Harman Kardon\nDolby Atmos\n\nConnectivity\nType-C Dual SIM,\ndual 5G standby***\nSupports NFC\nBluetooth 5.2\nBands: 5G: n1/n3/n5/n7/n8/n20/n28/n38/ n40/n41/n66/n77/n78\n4G: LTE FDD: B1/2/3/4/5/7/8/12/13/ 17/18/19/20/26/28/32/66\nLTE TDD: B38/40/41/42 3G: WCDMA: 1/2/4/5/8/19\nWi-Fi 6\n\nSecurity\nArc side fingerprint sensor', 'grey', 'white', 'blue', '8GB + 256GB', '12GB + 256GB', '', 'Processor Qualcomm Snapdragon™ 888 5nm power-efficient manufacturing process Octa-core design X60 modem for lightning-fast 5G connectivity*** LPDDR5 RAM + UFS 3.1 storage 8GB+128GB, 8GB+256GB, 12GB+256GB Vapor chamber cooling technology X-axis linear vibration motor', 'RM2099'),
(127, 'Xiaomi Mi 11 Ultra', 1, '2022-01-05 14:05:00', 'Upload202201035217.PNG', 'Upload202201036925.PNG', '', 'Processor\nFlagship Qualcomm® Snapdragon™ 888\n5nm power-efficient manufacturing process\nCPU: Qualcomm® Kryo™ 680, up to 2.84GHz, with Arm Cortex-X1 technology\nGPU: Qualcomm® Adreno™ 660 GPU\nAI: 6th Gen AI Engine\nSnapdragon X60 5G modem\n\nStorage & RAM\n12GB+256GB\nLPDDR5 + UFS 3.1\n*Available storage and RAM are less than the total memory due to storage of the operating system and software pre-installed on the device.\n\nDimensions\nHeight: 164.3mm\nWidth: 74.6mm\nThickness: 8.38mm\nWeight: 234g\nDisplay\nQuad-curved display\nWQHD+ 6.81” AMOLED DotDisplay\n3200x1440, 515 PPI\nAspect ratio: 20:9\nContrast ratio: 5,000,000:1\nColor gamut: DCI-P3\nBrightness: HBM 900 nits (typ), 1700 nits peak brightness (typ)\nHDR 10+\nRefresh rate: 120Hz\nAdaptiveSync display: 30Hz/60Hz/90Hz/120Hz\nTouch sampling rate: up to 480Hz\nSupports MEMC (Transform videos 24fps to 48fps, 25fps to 50fps, 30fps to 60fps)\nTrueColor display: JNCD≈0.38, Delta E≈0.41\n1.07 billion colors\nAI display\nSupports sunlight display 3.0\nDisplayMate A+\nSupports reading mode 3.0\n360° ambient light sensors 2.0\nCorning® Gorilla® Glass Victus™\nSGS Eye Care Display Certification\n\nRear Camera\n50MP wide-angle camera\n1.4μm pixel size, 2.8μm 4-in-1 Super Pixel\n1 /1.12” sensor size\nf/1.95\nOIS\n8P lens\nDual Native ISO Fusion\nStaggered-HDR\nDual Pixel Pro\n48MP ultra-wide-angle camera\n128° FOV\nf/2.2\n0.8μm pixel size, 1.6μm 4-in-1 Super Pixel\n1 /2.0” sensor size\n7P lens\nPDAF\n48MP telephoto camera\n120x digital zoom, 10x hybrid zoom, 5x optical zoom\nOIS\n0.8μm pixel size, 1.6μm 4-in-1 Super Pixel\n1 /2.0” sensor size\nPDAF\n\nRear camera photography features\nNight mode 2.0 + Ultra Night Photos\nAction capture\n\nRear camera video features\nWide camera video\n8K video: 24 fps, supports HDR 10\n4K video: 60fps / 30fps, supports HDR 10+\n1080P video: 60fps / 30fps, slow motion shooting: 120fps / 240fps / 480fps / 960fps / 1920fps\n720P video: 30fps, slow motion shooting: 120fps / 240fps / 480fps / 960fps / 1920fps\nTelephoto camera / Ultra-wide camera video\n8K video: 24 fps\n4K video: 60fps / 30fps\n1080P video: 60fps / 30fps, slow motion shooting: 120fps / 240fps / 480fps / 960fps / 1920fps\n720P video: 30fps, slow motion shooting: 120fps / 240fps / 480fps / 960fps / 1920fps\n\nFront Camera\n20MP in-display selfie camera\nFront camera photography features\nSelfie Night mode\nFront camera video features\nVideo HDR\nFront camera video recording\n1080p 1920x1080 at 30fps/ 60fps\n720p 1280x720 at 30fps\nSlow motion video: 120fps, 720p\n\nBattery & Charging\n5000mAh battery (typ) / 4900 mAh（min）\n2nd generation silicon anode\nMTW technology\n67W wired turbo charging/67W wireless turbo charging\nInbox 67W wired charger\n\nNetwork & Connectivity\nDual SIM\nNetwork bands:\nSupports 5G* / 4G / 3G/ 2G\n5G: n1 / n3 / n5/ n7 /n8/ n20/ n28/ n38/ n40 /n41 /n77 / n78 / n79\n4G: FDD-LTE ：B1 / B2 / B3 / B4 / B5 / B7 / B8 / B12 / B17 / B20 / B28/ B32 /B66\n4G: TDD-LTE：B38 / B40 / B41 / B42\n3G: WCDMA：B1 / B2 / B4 / B5 / B8 / B19\n2G: GSM：850 900 1800 MHz\nSupports 4x4 MIMO\n*5G connectivity may vary based on region availability and local operator support.\nWireless Networks\nWi-Fi 6E/Wi-Fi 6*\n*Wi-Fi 6E connectivity may vary based on region availability and local network support. The function may be added via OTA when and where applicable.\nBluetooth 5.2\nSupports AAC/LDAC/LHDC', 'black', 'white', '', '8GB + 256GB', '12GB + 256GB', '', 'A new era of exquisite design. Break the pattern.  Let imagination lead the way.', 'RM4890'),
(128, 'Mi 10T Pro', 1, '2022-01-05 14:06:30', 'Upload202201045303.jpg', 'Upload202201043387.jpg', 'Upload202201047729.jpg', 'Processor\nQualcomm® Snapdragon™ 865 with 5G\n7nm power-efficient manufacturing process\nQualcomm® Kryo™ 585，Octa-core CPU, up to 2.84 GHz\nQualcomm® Adreno™ 650 GPU\nX55 modem for lightning-fast 5G connectivity\n\nStorage and RAM\nMi 10T Pro\n8GB+128GB\n8GB+256GB\nMi 10T\n6GB+128GB\n8GB+128GB\nLPDDR5 RAM + UFS 3.1 Flash Storage\n\nRear Camera\nMi 10T Pro\n108MP+13MP+5MP triple rear camera\n108MP ultra-high resolution main camera\nSamsung HMX, 1 /1.33” sensor size\n0.8μm pixel size, 4-in-1 to 1.6μm Super Pixel\nUp to 30x digital zoom\nf/1.69, 7P lens, OIS, AF\n13MP ultra-wide angle camera\n1.12μm pixel size, FOV 123°, f/2.4, 5P lens\n5MP macro camera\n1.12μm pixel size, f/2.4, 3P lens, AF(2cm-10cm)\n\nFront camera:\n20MP Ultra-clear Front Camera\nSamsung S5K3T2\n0.8μm pixel size, 4-in-1 to 1.6μm Super Pixel\n1 /3.4\" sensor size, f/2.2, 5P lens, FF\nFront camera photography features\nTimed burst | Night mode | Panorama selfie | Palm Shutter | Movie frame | HDR | Front facing flash\nFace recognition | AI Beautify | AI portrait mode | AI scene detection\nFront camera video features\nTime-lapse selfie video | Dual video | AI portrait video | AI video color focus\n1080p video recording\n30fps\n720p video recording\n30fps\n720p slow motion recording\n120fps\n\nDisplay:\n144Hz 6.67\" DotDisplay\nResolution: 2400 x 1080 FHD+\nSupports AdaptiveSync in 30Hz/48Hz/50Hz/60Hz/90Hz/120Hz/144Hz\nColor gamut: NTSC 96% (typ), DCI-P3 98% (typ)\nTrueColor display: JNCD≈0.39 Delta E≈0.63\nSupports MEMC\nReading mode 3.0\nSunlight display 3.0\n360° ambient light sensor\nTÜV Rheinland Low Blue Light Certification\nContrast ratio: 1500:1 (typ)\nBrightness: 500 nits (typ), 650 nits max brightness (typ)\nHDR10\nTriple Corning® Gorilla® Glass 5 covering front, back and camera lenses\n\nBattery and Charging:\n5000mAh (typ)*/4900mAh (min) high-capacity battery\n33W wired fast charge\n33W fast charger in-box\nUSB-C reversible connector port', 'black', 'grey', 'cyan', '8GB + 128GB', '8GB + 256GB', '', 'Power Your Creativity Flagship Camera, Display and Speed', 'RM3999'),
(129, 'Mi 10 Pro', 1, '2022-01-05 14:06:54', 'Upload202201046198.jpg', 'Upload202201042399.jpeg', '', 'Storage and RAM:\n8GB + 256GB\nRAM: 8GB\n\nLPDDR5 memory\nROM: 256GB\n\nUFS3.0 flash storage\n\nRear camera:\n108MP | AI rear quad camera | 10x hybrid optical zoom | 50x digital zoom\n108MP ultra-clear primary sensor\n\n1/1.33”, 0.8μm 4-in-1 to 1.6μm, f/1.69, aperture, OIS, 8P lens\n\n\n8MP 10x hybrid zoom lens\n\n10x hybrid zoom, OIS, f/2.0 aperture,1.0μm pixel size\n\n\n12MP Portrait lens\n\n2x optical zoom, 1.4μm large pixel size 2PD autofocus, f/2.0 aperture\n\n\n20MP ultra wide-angle\n\nUp to 117° FoV, f/2.2 aperture\n\nFront camera:\n20MP Ultra-clear Front Camera\nFront camera photography features\nPanorama selfie | Full screen camera frame | Palm shutter | Front camera HDR | Front camera flash(via display) | Selfie timer | Eye light | AI Beautify | AI feature adjustment | AI makeup | AI portrait mode | AI scene detection | AI studio lighting\n\nDisplay:\n6.67\" AMOLED Screen Display\nTUV Rheinland low blue-light certification\nResolution: 2340×1080 FHD+\n90Hz refresh rate\n800 nit (HBM)/500 nit (typ)\nContrast 5000000:1 (typ) | Color Gamut: 100% DCI-P3, sRGB and NTSC coverage\nCorning® Gorilla® Glass 5\n\nCharging and battery:\n4500mAh(typ) / 4400mAh(min)*\nBuilt-in rechargeable battery\nUSB Type-C reversible connector port\nTÜV Rheinland Certiﬁed Safe Fast-Charge System 3.0\nSupports QC4.0+ / PD 3.0 quick charging protocol\n65W charger included in-box\nPD charging protocol\nTriple Fast Charging', 'white', 'grey', '', '8GB + 256GB', '', '', 'Light, Camera, Action. Leading video in the 5G era.', 'RM1999'),
(130, 'Mi 10', 1, '2022-01-04 07:58:18', 'Upload202201048707.jpeg', 'Upload202201046215.jpg', '', 'Storage and RAM:\r\n8GB + 256GB\r\nUp to\r\nRAM: 8GB\r\n\r\nLPDDR5 memory\r\nROM: 128GB / 256GB\r\n\r\nUFS3.0 flash storage\r\n\r\nRear Camera:\r\n108MP | AI rear quad camera\r\n108MP ultra-clear primary sensor\r\n\r\n1/1.33â€ large sensor size, OIS, 1.6Î¼m 4-in-1 Super Pixels, f/1.69 aperture, 7P lens\r\n\r\n\r\n13MP ultra wide-angle\r\n\r\nUp to 123Â° FoV, f/2.4 aperture\r\n\r\n\r\n2MP depth sensor\r\n\r\nf/2.4 aperture\r\n\r\n\r\n2MP macro lens\r\n\r\nf/2.4 aperture\r\n\r\n\r\nRear camera photography features\r\n\r\nPortrait mode background blurring | Panorama mode | Pro mode | Photo timer | Leveling | Burst mode | Face recognition | HDR | AI Beautify | AI smart slimming | Ultra wide-angle edge distortion correction | Group photo face correction | Custom watermark | Portrait mode background blur adjustment | Rear camera AI scene detection | AI light trails | AI Studio lighting | AI high resolution photos\r\n\r\n\r\nRear camera video features\r\n\r\nMovie frame | Macro slow-motion video | 4K recording | 15 Seconds Short video recording | Rear Short video smart slimming | Rear video beautify | ShootSteady video\r\n\r\nFront Camera:\r\n20MP Ultra-clear Front Camera\r\nFront camera photography features\r\nPanorama selfie | Full screen camera frame | Palm shutter | Front camera HDR | Front camera flash(via display) | Selfie timer | Eye light | AI Beautify | AI feature adjustment | AI makeup | AI portrait mode | AI scene detection | AI studio lighting\r\n\r\nDisplay:\r\n6.67\" AMOLED Display\r\nTÃœV RheinlandÂ® low blue light certification\r\nResolution: 2340 x 1080 FHD+\r\n90Hz refresh rate\r\nBrightness: 800nit HBM / 500nit(typ)\r\nContrast 5000000:1 (typ) | Color Gamut: 100% DCI-P3, sRGB and NTSC coverage\r\nCorningÂ® GorillaÂ® Glass 5\r\n\r\nCharging and battery:\r\n4780mAh(typ) / 4680mAh(min)*\r\nBuilt-in rechargeable battery\r\nUSB Type-C reversible connector port\r\nSupports QC4.0+ / PD 3.0 quick charging protocol\r\n30W charger included in-boxâ€¨, PD charging protocol\r\nTriple Fast Charging\r\n', 'grey', '#005953', '', '8GB + 256GB', '', '', 'Light, Camera, Action. Leading video in the 5G era.', 'RM1599'),
(131, 'Redmi Watch 2 Lite', 6, '2022-01-05 14:08:03', 'Upload202201041827.png', '', '', 'Dimensions\nHeight: 41.2mmWidth: 35.3mmThickness: 10.7mmNet weight: 35g (including strap)\n\nWatch Strap\nColour: Ivory, Black, Blue, Pink, Olive, BrownAdjustable length: 140-210mmMaterial: TPU\n\nDisplay\n1.55\" square & thin-film transistor (TFT) screenResolution: 320*360\n\nSensors\nOptical heart rate sensor, accelerometer, gyroscope, electronic compassGPS/GLONASS/Galileo/BeiDou\n\nBattery\n262 mAhCharging port: Magnetic chargingBattery life:10 days under typical usage mode*\n5 days under heavy usage mode*\"\n\nSystem language\nEnglish, German, Italian, French, Spanish, Dutch, Portuguese, Turkish, Polish, Ukrainian, Romania, Czech, Greece, Russian, Thai, Vietnamese, Brazilian Portuguese, Indonesian, Traditional Chinese\n\nSpecifications\nWaterproof level: 5 ATM*Wireless connection:Bluetooth 5.0 (Bluetooth Low Energy)Supported systems: Android 6.0 or later\niOS 10.0 or later\n\nPacking list\nWatch body ×1Watch strap ×1Charging cable ×1User manual ×1', 'white', '', '', '', '', '', 'Get fit, start now. 1.55\" colourful touch display 100+ fitness modes 5 ATM water resistance* SpO₂ measurement* and 24-hour heart rate tracking Multi-system standalone GPS Up to 10 days of battery life* Dimensions Height: 41.2mmWidth: 35.3mmThickness: 10.7mmNet weight: 35g (including strap)', 'RM249'),
(132, 'Mi Wireless Outdoor Camera', 6, '2022-01-05 14:08:39', 'Upload202201043583.png', '', '', 'Product model no\nMWC13\n\nRated input\n5V, 2A\n\nOutdoor camera\n52.7×122×102.6 mm\n\nOutdoor camera net\n273 g\n\nLens angle\n130°\n\nResolution\n1920×1080\n\nAperture\nF2.1\n\nVideo encoding\nH.265\n\nInfrared lights\n940 nm infrared light ×8\n\nOperating\n-20°C to 50°C\n\nBattery capacity\n5700 mAh\n\nWireless connection\nWi-Fi FiIEEE802.11b/g/n\n\nCompatible with\nAndroid 6.0 or iOS 10\n\nIndoor receiver\n110×85×77.1 mm\n\nIndoor receiver\n88 g\n\nIndoor receiver\nMicro SD card (up to 32 GB)\n\nIndoor receiver\nRJ45 network port\n\nProduct name\nMi Wireless Outdoor Security Camera\n\nProduct model no.\nMWC14\n\nRated input\n5V, 2A\n\nOutdoor camera\n52.7×122×102.6 mm\n\nOutdoor camera\n273 g\n\nLens angle\n130°\n\nResolution\n1920×1080\n\nResolution\nF2.1\n\nVideo encoding\nH.265\n\nInfrared lights\n940 nm infrared light ×8\n\nOperating temperature\n-20°C to 50°C\n\nBattery capacity\n5700 mAh\n\nWireless connection\nWi-Fi FiIEEE802.11b/g/n 2.4 GHz\n\nCompatible with\nAndroid 6.0 or iOS 10 and above', 'white', '', '', '', '', '', 'Easy wire-free installation, high-resolution monitoring', 'RM140'),
(133, 'Mi Ionic Hair Dryer 2', 6, '2022-01-05 14:09:17', 'Upload202201041469.jpg', '', '', 'Model no.:\nCMJ03LX\n\nRated voltage:\n220 V~\n\nDimensions:\n144×79×237 mm (including nozzle)\n\nRated power:\n1800W\n\nRated frequency:\n50Hz\nNet weight:\n595g (including air nozzle)\n\nPower cord length:\n1.7m\n\nPackage contents:\nHair dryer ×1\nNozzle ×1\nUser manual ×1', 'white', '', '', '', '', '', 'Deeply moisturizes to make your hair shiny Dual water ion hair care 20m/s ultra-high air flow All-metal body Smart temperature control', 'RM599'),
(134, 'Mi 20W Wireless Charging Stand', 6, '2022-01-05 14:09:37', 'Upload202201045282.jpg', '', '', 'Model No.:\nWPC02ZM\n\nInput Port:\nUSB-C\n\nTransmission Distance:\n≤4 mm\n\nInput Parameters:\n5V=2A/9V=1.6A/12V–16V– 1.7A max\n\nOutput Parameters:\n20W max\n\nOperating Temperature:\n0°C–35°C\n\nProduct Dimensions:\n109.7 × 91 × 91 mm\n\nPackage contents:\nMi 20W Wireless Charging Stand (Universal 20W Fast Charge) × 1\nUSB cable × 1\nUser manual × 1', 'black', '', '', '', '', '', '20W max wireless super fast charging', 'RM299');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_user_id` int(10) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `product_id`, `review_user_id`, `review`) VALUES
(137, 127, 19, 'good product'),
(138, 131, 19, 'good\r\n'),
(139, 114, 19, 'good'),
(140, 127, 19, 'good'),
(141, 124, 22, 'good'),
(142, 111, 23, 'good\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `password`, `date`, `user_id`) VALUES
('vincent', '$2y$10$7iB8AnBPeKwTcwfulhwCtOCLEWta4y6.ngtCQseGLBVe79tC9pXga', '2023-02-24 11:30:05', 19),
('wilson', '$2y$10$4YTNMjkCuU7R.J.YlMRpf.73X34wcGp7.E9vubE9OwFpiMaVSSPIG', '2023-02-24 11:30:14', 20),
('ali', '$2y$10$XpkMlIYZjCZIs7HZs7UAm.50w.HW45hDTTtPy4a2KiDMh3P2cthEG', '2023-02-24 11:30:19', 21),
('siti', '$2y$10$Szgk0RBnCwwwvBJqZ.Cn6uzxrMh47Z.snYbD1lNhCHR98qur4v8D.', '2023-02-24 11:30:23', 22),
('testuser', '$2y$10$PDJwSvn6EAOX/UXUaYQF/Oo7XwKzrd.qx0FVkJ6U3fZAgMpuBwf2u', '2023-02-24 11:36:06', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact_inquiry`
--
ALTER TABLE `contact_inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cat` (`product_category`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user` (`review_user_id`),
  ADD KEY `product` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_inquiry`
--
ALTER TABLE `contact_inquiry`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `cat` FOREIGN KEY (`product_category`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user` FOREIGN KEY (`review_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
