-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2020 a las 17:44:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: marisqueria
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitanes`
--

CREATE TABLE `capitanes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administracion', '[]', '#000', NULL, '2020-09-08 13:03:59', '2020-09-08 13:06:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lastname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `password`, `lastname`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ulises', 'Super Admin', 'Male', '$2y$10$mh2b4gd2bvuhhs5ATBWcY.jpoUU2E9txxjDyftKdXZUbL66WQ6.Py', 'Soza', 'UlisesSoza', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2020-09-08', '2020-09-08', '2020-09-08', '0.000', NULL, '2020-09-08 13:04:37', '2020-09-08 20:32:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designacion` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` decimal(15,3) NOT NULL,
  `monto` double(15,2) NOT NULL,
  `proveedor` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanchas`
--

CREATE TABLE `lanchas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Administracion', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(2, 'sitename_part1', '', 'Marisquería Hernández', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(3, 'sitename_part2', '', 'Administración', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(4, 'sitename_short', '', 'ME', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(5, 'site_description', '', '', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(6, 'sidebar_search', '', '0', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(7, 'show_messages', '', '0', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(8, 'show_notifications', '', '0', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(9, 'show_tasks', '', '0', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(10, 'show_rightsidebar', '', '0', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(11, 'skin', '', 'skin-green', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(12, 'layout', '', 'fixed', '2020-09-08 13:04:00', '2020-09-08 20:34:50'),
(13, 'default_email', '', '', '2020-09-08 13:04:00', '2020-09-08 20:34:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(9, 'Usuarios', 'employees', 'fa-users', 'custom', 0, 6, '2020-09-08 18:59:07', '2020-09-08 19:49:55'),
(14, 'Capitanes', 'capitanes', 'fa fa-user', 'module', 16, 2, '2020-09-08 19:21:21', '2020-09-08 19:48:21'),
(15, 'Lanchas', 'lanchas', 'fa fa-ship', 'module', 16, 3, '2020-09-08 19:22:16', '2020-09-08 19:48:22'),
(16, 'Viajes', '#', 'fa-map', 'custom', 0, 5, '2020-09-08 19:22:59', '2020-09-08 19:49:55'),
(17, 'Viajes', 'viajes', 'fa fa-map-pin', 'module', 16, 1, '2020-09-08 19:28:33', '2020-09-08 19:48:21'),
(18, 'Ventas', 'ventas', 'fa-shopping-cart', 'custom', 0, 2, '2020-09-08 19:48:41', '2020-09-08 19:49:47'),
(19, 'Gastos', 'gastos', 'fa-money', 'custom', 0, 3, '2020-09-08 19:48:59', '2020-09-08 19:49:47'),
(20, 'Productos', 'productos', 'fa-cart-plus', 'custom', 0, 1, '2020-09-08 19:49:19', '2020-09-08 19:49:47'),
(21, 'Rutas', 'rutas', 'fa-map-marker', 'custom', 0, 4, '2020-09-08 19:49:39', '2020-09-08 19:49:47'),
(22, 'Users', 'users', 'fa-group', 'module', 0, 0, '2020-09-08 20:33:10', '2020-09-08 20:33:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2020-09-08 13:03:58', '2020-09-08 13:04:00'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2020-09-08 13:03:58', '2020-09-08 13:04:00'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2020-09-08 13:03:58', '2020-09-08 13:04:00'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2020-09-08 13:03:58', '2020-09-08 13:04:00'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2020-09-08 13:03:58', '2020-09-08 13:04:00'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2020-09-08 13:03:59', '2020-09-08 13:04:00'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2020-09-08 13:03:59', '2020-09-08 13:04:00'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2020-09-08 13:03:59', '2020-09-08 13:04:00'),
(9, 'Rutas', 'Rutas', 'rutas', 'nombre', 'Rutum', 'RutasController', 'fa-map-marker', 1, '2020-09-08 19:01:08', '2020-09-08 19:03:45'),
(10, 'Productos', 'Productos', 'productos', 'name', 'Producto', 'ProductosController', 'fa-cart-plus', 1, '2020-09-08 19:04:30', '2020-09-08 19:06:26'),
(11, 'Gastos', 'Gastos', 'gastos', 'designacion', 'Gasto', 'GastosController', 'fa-money', 1, '2020-09-08 19:11:02', '2020-09-08 19:12:45'),
(12, 'Ventas', 'Ventas', 'ventas', 'fecha', 'Venta', 'VentasController', 'fa-shopping-cart', 1, '2020-09-08 19:13:44', '2020-09-08 19:16:36'),
(13, 'Capitanes', 'Capitanes', 'capitanes', 'name', 'Capitane', 'CapitanesController', 'fa-user', 1, '2020-09-08 19:21:03', '2020-09-08 19:21:21'),
(14, 'Lanchas', 'Lanchas', 'lanchas', 'name', 'Lancha', 'LanchasController', 'fa-ship', 1, '2020-09-08 19:21:41', '2020-09-08 19:22:16'),
(15, 'Viajes', 'Viajes', 'viajes', 'partida', 'Viaje', 'ViajesController', 'fa-map-pin', 1, '2020-09-08 19:24:16', '2020-09-08 19:28:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(16, 'name', 'Nombres', 4, 16, 0, '', 3, 250, 1, '', 3, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(19, 'lastname', 'Apellidos', 4, 16, 0, '', 3, 20, 1, '', 4, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(20, 'password', 'Contraseña', 4, 17, 0, '', 5, 20, 1, '', 2, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(21, 'email', 'Usuario', 4, 8, 1, '', 5, 250, 1, '', 1, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(52, 'nombre', 'Nombre designado', 9, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:02:33', '2020-09-08 19:02:33'),
(55, 'name', 'Nombre', 10, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:04:56', '2020-09-08 19:04:56'),
(56, 'libras', 'Libras Disponibles', 10, 3, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:05:28', '2020-09-08 19:05:28'),
(57, 'preciomayor', 'Precio PorMayor', 10, 3, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:05:57', '2020-09-08 19:05:57'),
(58, 'preciomenor', 'Precio PorMenor', 10, 3, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:06:13', '2020-09-08 19:06:13'),
(59, 'lat', 'Latitud', 9, 6, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:09:44', '2020-09-08 19:09:44'),
(60, 'lon', 'Longitud', 9, 6, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:10:25', '2020-09-08 19:10:25'),
(61, 'designacion', 'Designacion', 11, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:11:29', '2020-09-08 19:11:29'),
(62, 'cantidad', 'Cantidad', 11, 6, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:12:07', '2020-09-08 19:12:07'),
(63, 'monto', 'Monto', 11, 3, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:12:26', '2020-09-08 19:12:26'),
(64, 'proveedor', 'Proveedor', 11, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:12:41', '2020-09-08 19:12:41'),
(65, 'fecha', 'Fecha', 12, 5, 0, '', 0, 0, 0, '', 0, '2020-09-08 19:14:26', '2020-09-08 19:14:26'),
(66, 'productos', 'Productos', 12, 15, 0, '', 0, 0, 0, '@productos', 0, '2020-09-08 19:15:33', '2020-09-08 19:15:33'),
(67, 'mayorista', 'Mayorista', 12, 2, 0, '', 0, 0, 0, '', 0, '2020-09-08 19:15:59', '2020-09-08 19:15:59'),
(68, 'cliente', 'Cliente', 12, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:16:20', '2020-09-08 19:16:20'),
(69, 'name', 'Nombre', 13, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:21:16', '2020-09-08 19:21:16'),
(70, 'name', 'Nombre', 14, 16, 0, '', 0, 256, 0, '', 0, '2020-09-08 19:22:05', '2020-09-08 19:22:05'),
(71, 'partida', 'Fecha Partida', 15, 5, 0, '', 0, 0, 0, '', 0, '2020-09-08 19:25:00', '2020-09-08 19:25:00'),
(72, 'llegada', 'Fecha Llegada', 15, 5, 0, '', 0, 0, 0, '', 0, '2020-09-08 19:25:14', '2020-09-08 19:25:14'),
(73, 'capitan', 'Capitán', 15, 7, 0, '', 0, 0, 0, '@capitanes', 0, '2020-09-08 19:25:35', '2020-09-08 19:25:35'),
(74, 'producto', 'Productos', 15, 7, 0, '', 0, 0, 0, '@productos', 0, '2020-09-08 19:25:56', '2020-09-08 19:25:56'),
(75, 'lancha', 'Lancha', 15, 7, 0, '', 0, 0, 0, '@lanchas', 0, '2020-09-08 19:26:20', '2020-09-08 19:26:20'),
(76, 'gasto', 'Gasto', 15, 7, 0, '', 0, 0, 0, '@gastos', 0, '2020-09-08 19:27:15', '2020-09-08 19:27:15'),
(77, 'marinos', 'Marinos', 15, 13, 0, '', 0, 10, 0, '', 0, '2020-09-08 19:27:50', '2020-09-08 19:27:50'),
(78, 'comision', 'Comisión', 15, 3, 0, '', 0, 11, 0, '', 0, '2020-09-08 19:28:28', '2020-09-08 19:28:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(2, 'Checkbox', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(3, 'Currency', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(4, 'Date', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(5, 'Datetime', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(6, 'Decimal', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(7, 'Dropdown', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(8, 'Email', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(9, 'File', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(10, 'Float', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(11, 'HTML', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(12, 'Image', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(13, 'Integer', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(14, 'Mobile', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(15, 'Multiselect', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(16, 'Name', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(17, 'Password', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(18, 'Radio', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(19, 'String', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(20, 'Taginput', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(21, 'Textarea', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(22, 'TextField', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(23, 'URL', '2020-09-08 13:03:58', '2020-09-08 13:03:58'),
(24, 'Files', '2020-09-08 13:03:58', '2020-09-08 13:03:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2020-09-08 13:04:00', '2020-09-08 13:04:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `libras` double(15,2) NOT NULL,
  `preciomayor` double(15,2) NOT NULL,
  `preciomenor` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(2, 'ADMINISTRADOR', 'Administrador', 'Administrador del negocio', 1, 1, NULL, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(3, 'EMPLEADO', 'Empleado', 'Trabajador común', 2, 1, NULL, '2020-09-08 18:44:01', '2020-09-08 18:44:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(2, 1, 2, 1, 1, 1, 1, '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(3, 1, 3, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(4, 1, 4, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(5, 1, 5, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(6, 1, 6, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(7, 1, 7, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(8, 1, 8, 1, 1, 1, 1, '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(9, 2, 1, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(10, 2, 2, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(11, 2, 3, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(12, 2, 4, 1, 1, 1, 1, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(13, 2, 5, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(14, 2, 6, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(15, 2, 7, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(16, 2, 8, 1, 0, 0, 0, '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(17, 3, 1, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(18, 3, 2, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(19, 3, 3, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(20, 3, 4, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(21, 3, 5, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(22, 3, 6, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(23, 3, 7, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(24, 3, 8, 1, 0, 0, 0, '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(25, 1, 9, 1, 1, 1, 1, '2020-09-08 19:03:45', '2020-09-08 19:03:45'),
(26, 1, 10, 1, 1, 1, 1, '2020-09-08 19:06:26', '2020-09-08 19:06:26'),
(27, 1, 11, 1, 1, 1, 1, '2020-09-08 19:12:45', '2020-09-08 19:12:45'),
(28, 1, 12, 1, 1, 1, 1, '2020-09-08 19:16:36', '2020-09-08 19:16:36'),
(29, 1, 13, 1, 1, 1, 1, '2020-09-08 19:21:21', '2020-09-08 19:21:21'),
(30, 1, 14, 1, 1, 1, 1, '2020-09-08 19:22:16', '2020-09-08 19:22:16'),
(31, 1, 15, 1, 1, 1, 1, '2020-09-08 19:28:33', '2020-09-08 19:28:33'),
(32, 2, 10, 1, 1, 1, 1, '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(33, 3, 10, 1, 0, 0, 0, '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(34, 2, 9, 1, 1, 1, 1, '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(35, 2, 11, 1, 1, 1, 1, '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(36, 2, 12, 1, 1, 1, 1, '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(37, 3, 12, 1, 1, 1, 1, '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(38, 2, 13, 1, 1, 1, 1, '2020-09-08 20:03:02', '2020-09-08 20:03:02'),
(39, 3, 13, 0, 0, 0, 0, '2020-09-08 20:03:02', '2020-09-08 20:03:02'),
(40, 2, 15, 1, 1, 1, 1, '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(41, 3, 15, 0, 0, 0, 0, '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(42, 2, 14, 1, 1, 1, 1, '2020-09-08 20:05:22', '2020-09-08 20:05:22'),
(43, 3, 14, 0, 0, 0, 0, '2020-09-08 20:05:22', '2020-09-08 20:05:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(2, 1, 2, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(3, 1, 3, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(4, 1, 4, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(5, 1, 5, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(6, 1, 6, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(7, 1, 7, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(8, 1, 8, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(9, 1, 9, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(10, 1, 10, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(11, 1, 11, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(12, 1, 12, 'write', '2020-09-08 13:03:59', '2020-09-08 13:03:59'),
(13, 1, 13, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(14, 1, 14, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(15, 1, 15, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(16, 1, 16, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(19, 1, 19, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(20, 1, 20, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(21, 1, 21, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(30, 1, 30, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(31, 1, 31, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(32, 1, 32, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(33, 1, 33, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(34, 1, 34, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(35, 1, 35, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(36, 1, 36, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(37, 1, 37, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(38, 1, 38, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(39, 1, 39, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(40, 1, 40, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(41, 1, 41, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(42, 1, 42, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(43, 1, 43, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(44, 1, 44, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(45, 1, 45, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(46, 1, 46, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(47, 1, 47, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(48, 1, 48, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(49, 1, 49, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(50, 1, 50, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(51, 1, 51, 'write', '2020-09-08 13:04:00', '2020-09-08 13:04:00'),
(52, 2, 1, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(53, 2, 2, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(54, 2, 3, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(55, 2, 4, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(56, 2, 5, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(57, 2, 6, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(58, 2, 7, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(59, 2, 8, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(60, 2, 9, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(61, 2, 10, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(62, 2, 11, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(63, 2, 12, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(64, 2, 13, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(65, 2, 14, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(66, 2, 15, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(67, 2, 16, 'write', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(70, 2, 19, 'write', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(71, 2, 20, 'write', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(72, 2, 21, 'write', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(81, 2, 30, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(82, 2, 31, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(83, 2, 32, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(84, 2, 33, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(85, 2, 34, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(86, 2, 35, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(87, 2, 36, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(88, 2, 37, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(89, 2, 38, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(90, 2, 39, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(91, 2, 40, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(92, 2, 41, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(93, 2, 42, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(94, 2, 43, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(95, 2, 44, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(96, 2, 45, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(97, 2, 46, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(98, 2, 47, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(99, 2, 48, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(100, 2, 49, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(101, 2, 50, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(102, 2, 51, 'readonly', '2020-09-08 13:06:41', '2020-09-08 13:06:41'),
(103, 3, 1, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(104, 3, 2, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(105, 3, 3, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(106, 3, 4, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(107, 3, 5, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(108, 3, 6, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(109, 3, 7, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(110, 3, 8, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(111, 3, 9, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(112, 3, 10, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(113, 3, 11, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(114, 3, 12, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(115, 3, 13, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(116, 3, 14, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(117, 3, 15, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(118, 3, 21, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(119, 3, 16, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(120, 3, 19, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(121, 3, 20, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(122, 3, 30, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(123, 3, 31, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(124, 3, 32, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(125, 3, 33, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(126, 3, 34, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(127, 3, 35, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(128, 3, 36, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(129, 3, 37, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(130, 3, 38, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(131, 3, 39, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(132, 3, 40, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(133, 3, 41, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(134, 3, 42, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(135, 3, 43, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(136, 3, 44, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(137, 3, 45, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(138, 3, 46, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(139, 3, 47, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(140, 3, 48, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(141, 3, 49, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(142, 3, 50, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(143, 3, 51, 'readonly', '2020-09-08 18:44:01', '2020-09-08 18:44:01'),
(144, 1, 52, 'write', '2020-09-08 19:02:33', '2020-09-08 19:02:33'),
(147, 1, 55, 'write', '2020-09-08 19:04:57', '2020-09-08 19:04:57'),
(148, 1, 56, 'write', '2020-09-08 19:05:28', '2020-09-08 19:05:28'),
(149, 1, 57, 'write', '2020-09-08 19:05:58', '2020-09-08 19:05:58'),
(150, 1, 58, 'write', '2020-09-08 19:06:13', '2020-09-08 19:06:13'),
(151, 1, 59, 'write', '2020-09-08 19:09:44', '2020-09-08 19:09:44'),
(152, 1, 60, 'write', '2020-09-08 19:10:25', '2020-09-08 19:10:25'),
(153, 1, 61, 'write', '2020-09-08 19:11:29', '2020-09-08 19:11:29'),
(154, 1, 62, 'write', '2020-09-08 19:12:07', '2020-09-08 19:12:07'),
(155, 1, 63, 'write', '2020-09-08 19:12:26', '2020-09-08 19:12:26'),
(156, 1, 64, 'write', '2020-09-08 19:12:41', '2020-09-08 19:12:41'),
(157, 1, 65, 'write', '2020-09-08 19:14:26', '2020-09-08 19:14:26'),
(158, 1, 66, 'write', '2020-09-08 19:15:33', '2020-09-08 19:15:33'),
(159, 1, 67, 'write', '2020-09-08 19:15:59', '2020-09-08 19:15:59'),
(160, 1, 68, 'write', '2020-09-08 19:16:20', '2020-09-08 19:16:20'),
(161, 1, 69, 'write', '2020-09-08 19:21:16', '2020-09-08 19:21:16'),
(162, 1, 70, 'write', '2020-09-08 19:22:05', '2020-09-08 19:22:05'),
(163, 1, 71, 'write', '2020-09-08 19:25:00', '2020-09-08 19:25:00'),
(164, 1, 72, 'write', '2020-09-08 19:25:14', '2020-09-08 19:25:14'),
(165, 1, 73, 'write', '2020-09-08 19:25:35', '2020-09-08 19:25:35'),
(166, 1, 74, 'write', '2020-09-08 19:25:56', '2020-09-08 19:25:56'),
(167, 1, 75, 'write', '2020-09-08 19:26:20', '2020-09-08 19:26:20'),
(168, 1, 76, 'write', '2020-09-08 19:27:15', '2020-09-08 19:27:15'),
(169, 1, 77, 'write', '2020-09-08 19:27:50', '2020-09-08 19:27:50'),
(170, 1, 78, 'write', '2020-09-08 19:28:28', '2020-09-08 19:28:28'),
(171, 2, 55, 'write', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(172, 2, 56, 'write', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(173, 2, 57, 'write', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(174, 2, 58, 'write', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(175, 3, 55, 'readonly', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(176, 3, 56, 'readonly', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(177, 3, 57, 'readonly', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(178, 3, 58, 'readonly', '2020-09-08 19:54:28', '2020-09-08 19:54:28'),
(179, 2, 52, 'write', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(180, 2, 59, 'write', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(181, 2, 60, 'write', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(182, 3, 52, 'invisible', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(183, 3, 59, 'invisible', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(184, 3, 60, 'invisible', '2020-09-08 19:54:56', '2020-09-08 19:54:56'),
(185, 2, 61, 'write', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(186, 2, 62, 'write', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(187, 2, 63, 'write', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(188, 2, 64, 'write', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(189, 3, 61, 'invisible', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(190, 3, 62, 'invisible', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(191, 3, 63, 'invisible', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(192, 3, 64, 'invisible', '2020-09-08 20:01:28', '2020-09-08 20:01:28'),
(193, 2, 65, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(194, 2, 66, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(195, 2, 67, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(196, 2, 68, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(197, 3, 65, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(198, 3, 66, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(199, 3, 67, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(200, 3, 68, 'write', '2020-09-08 20:02:29', '2020-09-08 20:02:29'),
(201, 2, 69, 'write', '2020-09-08 20:03:02', '2020-09-08 20:03:02'),
(202, 3, 69, 'invisible', '2020-09-08 20:03:02', '2020-09-08 20:03:02'),
(203, 2, 71, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(204, 2, 72, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(205, 2, 73, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(206, 2, 74, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(207, 2, 75, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(208, 2, 76, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(209, 2, 77, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(210, 2, 78, 'write', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(211, 3, 71, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(212, 3, 72, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(213, 3, 73, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(214, 3, 74, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(215, 3, 75, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(216, 3, 76, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(217, 3, 77, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(218, 3, 78, 'invisible', '2020-09-08 20:04:41', '2020-09-08 20:04:41'),
(219, 2, 70, 'write', '2020-09-08 20:05:22', '2020-09-08 20:05:22'),
(220, 3, 70, 'invisible', '2020-09-08 20:05:22', '2020-09-08 20:05:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombre` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(15,3) NOT NULL,
  `lon` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ulises', 1, 'javier97soza@gmail.com', '$2y$10$YwUcRfXW7O.ZWWyzAvSbD.sBFR1OvOd1jW.CJzNctcJ8vs6fpypQW', 'Employee', 'OBnPbvacMROwCOj9tdsE57J5kuXRLICcTwsdT3A60PFhfYPLdqlfvcoZSGls', NULL, '2020-09-08 13:04:37', '2020-09-08 20:41:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `productos` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `mayorista` tinyint(1) NOT NULL DEFAULT 0,
  `cliente` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `partida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `llegada` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `capitan` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `producto` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `lancha` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `gasto` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `marinos` int(10) UNSIGNED NOT NULL,
  `comision` double(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indices de la tabla `capitanes`
--
ALTER TABLE `capitanes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lanchas`
--
ALTER TABLE `lanchas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indices de la tabla `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indices de la tabla `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indices de la tabla `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viajes_capitan_foreign` (`capitan`),
  ADD KEY `viajes_producto_foreign` (`producto`),
  ADD KEY `viajes_lancha_foreign` (`lancha`),
  ADD KEY `viajes_gasto_foreign` (`gasto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capitanes`
--
ALTER TABLE `capitanes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lanchas`
--
ALTER TABLE `lanchas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `viajes`
--
ALTER TABLE `viajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Filtros para la tabla `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_capitan_foreign` FOREIGN KEY (`capitan`) REFERENCES `capitanes` (`id`),
  ADD CONSTRAINT `viajes_gasto_foreign` FOREIGN KEY (`gasto`) REFERENCES `gastos` (`id`),
  ADD CONSTRAINT `viajes_lancha_foreign` FOREIGN KEY (`lancha`) REFERENCES `lanchas` (`id`),
  ADD CONSTRAINT `viajes_producto_foreign` FOREIGN KEY (`producto`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
