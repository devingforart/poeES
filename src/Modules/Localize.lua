-- Path of Building
--
-- Module: Localize
-- Lightweight UI localisation with English fallbacks.
--

local Localize = {
	currentLocale = "en",
	fallbackLocale = "en",
	locales = {
		en = {
			label = "English",
			strings = { },
		},
		es = {
			label = "Espanol",
			strings = {
				["ui.ok"] = "Aceptar",
				["ui.cancel"] = "Cancelar",
				["main.options_button"] = "Opciones",
				["main.about_button"] = "Acerca de",
				["main.update_ready"] = "Actualizacion lista",
				["main.check_for_update"] = "Buscar actualizacion",
				["main.community_fork"] = "Fork de la comunidad de PoB",
				["main.version_label"] = "Version: %s",
				["main.beta_label"] = "Beta: %s",
				["main.application_options"] = "Opciones de la aplicacion",
				["main.language"] = "Idioma:",
				["main.connection_protocol"] = "Protocolo de conexion:",
				["main.connection_protocol_tooltip"] = "Cambia el protocolo usado al descargar actualizaciones e importar builds.",
				["main.use_system_default"] = "Usar predeterminado del sistema",
				["main.ui_scaling_override"] = "Escala de interfaz:",
				["main.ui_scaling_tooltip"] = "Sobrescribe la escala DPI de Windows dentro de Path of Building.\nElige un porcentaje entre 100%% y 250%% o vuelve al valor del sistema.",
				["main.build_save_path"] = "Ruta de guardado de builds:",
				["main.options_title"] = "Opciones",
				["main.proxy_server"] = "Servidor proxy:",
				["build.mode.import_export"] = "Importar/Exportar build",
				["build.mode.notes"] = "Notas",
				["build.mode.configuration"] = "Configuracion",
				["build.mode.tree"] = "Arbol",
				["build.mode.skills"] = "Gemas",
				["build.mode.items"] = "Objetos",
				["build.mode.calcs"] = "Calculos",
				["build.mode.party"] = "Grupo",
				["build.mode.compare"] = "Comparar",
				["import.section.character"] = "Importacion de personaje",
				["import.status_prefix"] = "Estado de importacion del personaje: ",
				["import.account_name_header"] = "Para empezar a importar un personaje, introduce el nombre de cuenta del personaje:",
				["import.start"] = "Iniciar",
				["import.missing_discriminator"] = "Falta el discriminador, por ejemplo ",
				["import.remove_account_tooltip"] = "Elimina la cuenta de la lista desplegable",
				["import.missing_discriminator_short"] = "Falta el discriminador, por ejemplo #1234",
				["import.account_unicode_note"] = "Nota: si el nombre de cuenta contiene caracteres no ASCII, debes pegarlo en el cuadro de texto,\nno escribirlo manualmente.",
				["import.session_header"] = "No se pudo recuperar la lista de personajes de '%s'. Esto puede deberse a que:\n1. Falta el discriminador al final del nombre de cuenta, por ejemplo #1234\n2. Has introducido un nombre de personaje en lugar de un nombre de cuenta o\n3. La pestana de personajes de esta cuenta esta oculta (es la opcion predeterminada).\nSi esta es tu cuenta, puedes:\n1. Desmarcar \"Hide Characters\" en la configuracion de privacidad o\n2. Introducir un POESESSID abajo.\nPuedes obtenerlo desde las cookies de tu navegador web mientras has iniciado sesion en la web de Path of Exile.",
				["import.retry"] = "Reintentar",
				["import.privacy_settings"] = "Privacidad",
				["import.go"] = "Ir",
				["import.select_character_header"] = "Elige el personaje del que importar datos:",
				["import.league"] = "Liga:",
				["import.import_label"] = "Importar:",
				["import.passive_tree_and_jewels"] = "Arbol pasivo y joyas",
				["import.character_import_title"] = "Importacion de personaje",
				["import.overwrite_tree_warning"] = "Importar el arbol pasivo sobrescribira tu arbol actual.",
				["import.import_button"] = "Importar",
				["import.delete_jewels"] = "Borrar joyas:",
				["import.delete_jewels_tooltip"] = "Borra todas las joyas existentes al importar.",
				["import.items_and_skills"] = "Objetos y gemas",
				["import.delete_skills"] = "Borrar gemas:",
				["import.delete_skills_tooltip"] = "Borra todas las gemas existentes al importar.",
				["import.delete_equipment"] = "Borrar equipo:",
				["import.delete_equipment_tooltip"] = "Borra todos los objetos equipados al importar.",
				["import.ignore_weapon_swap"] = "Ignorar cambio de armas:",
				["import.ignore_weapon_swap_tooltip"] = "Ignora los objetos y gemas del cambio de armas.",
				["import.bandit_note"] = "Consejo: despues de terminar de importar un personaje, asegurate de actualizar la eleccion del bandido,\nya que no se puede importar.",
				["import.close"] = "Cerrar",
				["import.section.build_sharing"] = "Compartir build",
				["import.generate_code_label"] = "Genera un codigo para compartir esta build con otros usuarios de Path of Building:",
				["import.generate"] = "Generar",
				["import.export_support"] = "Exportar soporte",
				["import.export_support_tooltip"] = "Esto es para juego en grupo: al exportar un personaje de soporte, habilita la exportacion de auras, maldiciones y modificadores al enemigo.",
				["import.code"] = "Codigo",
				["import.copy"] = "Copiar",
				["import.share"] = "Compartir",
				["import.creating_link"] = "Creando enlace...",
				["import.share_note"] = "Nota: este codigo puede ser muy largo; puedes usar 'Compartir' para acortarlo.",
				["import.import_build_header"] = "Para importar una build, introduce aqui una URL o codigo:",
				["import.invalid_input"] = "Entrada no valida",
				["import.url_valid"] = "La URL es valida (%s)",
				["import.code_valid"] = "El codigo es valido",
				["import.build_import_title"] = "Importacion de build",
				["import.build_import_warning"] = "Advertencia:^7 importar sobre la build actual borrara TODOS los datos existentes de esta build.",
				["import.import_error_title"] = "Error de importacion",
				["import.import_comparison_failed"] = "No se pudo importar la build para comparacion.",
				["import.mode.current"] = "Importar en esta build",
				["import.mode.new"] = "Importar en una build nueva",
				["import.mode.compare"] = "Importar como comparacion",
				["import.retrieving_paste"] = "Recuperando enlace...",
				["item.tooltip.requires"] = "Requiere",
				["item.tooltip.variant"] = "Variante",
				["item.tooltip.variants"] = "variantes",
				["item.tooltip.exclusive_to"] = "Exclusivo de",
				["item.tooltip.not_yet_available"] = "Aun no disponible",
				["item.tooltip.source"] = "Fuente",
				["item.tooltip.quality"] = "Calidad",
				["item.tooltip.physical_damage"] = "Daño fisico",
				["item.tooltip.elemental_damage"] = "Daño elemental",
				["item.tooltip.elemental_dps"] = "DPS elemental",
				["item.tooltip.chaos_damage"] = "Daño de caos",
				["item.tooltip.total_dps"] = "DPS total",
				["item.tooltip.critical_strike_chance"] = "Probabilidad de golpe critico",
				["item.tooltip.attacks_per_second"] = "Ataques por segundo",
				["item.tooltip.weapon_range"] = "Alcance del arma",
				["item.tooltip.metres"] = "metros",
				["item.tooltip.chance_to_block"] = "Probabilidad de bloquear",
				["item.tooltip.armour"] = "Armadura",
				["item.tooltip.evasion_rating"] = "Puntuacion de evasion",
				["item.tooltip.energy_shield"] = "Escudo de energia",
				["item.tooltip.ward"] = "Guardia",
				["item.tooltip.limited_to"] = "Limitado a",
				["item.tooltip.requires_class"] = "Requiere clase",
				["item.tooltip.radius"] = "Radio",
				["item.tooltip.sockets"] = "Engarces",
				["item.tooltip.talisman_tier"] = "Grado del talisman",
			},
		},
	},
}

function Localize:SetLocale(locale)
	self.currentLocale = self.locales[locale] and locale or self.fallbackLocale
end

function Localize:GetLocale()
	return self.currentLocale
end

function Localize:GetLocaleList()
	return {
		{ id = "en", label = "English" },
		{ id = "es", label = "Espanol" },
	}
end

function Localize:Translate(key, fallback, ...)
	local locale = self.locales[self.currentLocale]
	local text = locale and locale.strings[key]
	if not text and self.currentLocale ~= self.fallbackLocale then
		text = self.locales[self.fallbackLocale].strings[key]
	end
	text = text or fallback or key
	if select("#", ...) > 0 then
		return string.format(text, ...)
	end
	return text
end

localize = Localize

function tr(key, fallback, ...)
	return localize:Translate(key, fallback, ...)
end

return Localize
